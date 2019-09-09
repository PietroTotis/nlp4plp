import argparse
import re
import os
from collections import Counter
from collections import defaultdict

from problog.parser import PrologParser
from problog.parser import ParseError
from problog.program import PrologFactory
from problog.engine_unify import subsumes, UnifyError
from problog.logic import Term, Var, term2list

predicates = {
    "aggcmp": [4,5],
    "all": [2],
    "all_diff": [2],
    "all_same": [2],
    "and": [2],
    "atleast": [3],
    "atmost": [3],
    "exactly": [3],
    "given": [1],
    "group": [1],
    "less_than": [3],
    "more_than": [3],
    "none": [2],
    "not": [1],
    "nth": [3],
    "observe": [1],
    "or": [2],
    "outcome": [1],
    "partition": [2],
    "probability": [1],
    "property": [2],
    "rel": [2,3],
    "rest": [1],
    "size": [2],
    "some": [2],
    "take": [2,3],
    "take_wr": [3],
    "union": [2],
    "v": [2]
}

ignore = ["'+'","'-'","'/'","'*'", "."]

class EvalError(Exception):
    def __init__(self, message):
        self.errtype = self.__class__.__name__
        self.base_message = message

class NameError(Exception):
    def __init__(self, predicate):
        self.errtype = "name"
        self.base_message = f"Predicate {predicate} is not valid"

class ArityError(Exception):
    def __init__(self, predicate):
        self.errtype = "arity"
        self.base_message = f"Predicate {predicate} has a wrong number of arguments"

class ConsistencyError(Exception):
    def __init__(self, l_term, o_term, match):
        self.errtype = "consistency"
        self.base_message = f"inconsistent use of {str(l_term)} and {str(o_term)} in {str(match)}"
class ExtraError(Exception):
    def __init__(self, predicate):
        self.errtype = "extra"
        self.base_message = f"Extra predicate {predicate}"

class MissingError(Exception):
    def __init__(self, predicate):
        self.errtype = "missing"
        self.base_message = f"could not find {predicate}"

class TakeError(Exception):
    def __init__(self):
        self.errtype = "take"
        self.base_message = f"Wrong take statement"

class ConstError(Exception):
    def __init__(self, l_term, o_term):
        self.errtype = "constants"
        self.base_message = f"constants mismatch between {str(l_term)} and {str(o_term)}"

class ParsingError(Exception):
    def __init__(self):
        self.errtype = "format"
        self.base_message = f"Couldn't parse the program."



def check_bind(match, l_term, o_term):
    '''
    Given one match and two corresponding terms from label and output programs, checks if the terms respect the match
    :param match: the root predicates we started from the recursion
    :param l_term: the term from the label at the current level of nesting
    :param o_term: the term from the output of the NN  at the current level of nesting
    '''
    l_predicate, o_predicate = match
    errors = []
    for pos, arg in enumerate(l_predicate.args):
        if arg.arity > 0 and arg.functor not in ignore:
            nested_errors = check_bind(
                                (l_predicate.args[pos], o_predicate.args[pos]),
                                l_term,
                                o_term
                            )
            errors.extend(nested_errors)
        elif str(arg.functor) == "'-'": #special case: '-' is not subtraction but a normal char: compare strings
            if ((str(l_predicate.args[pos]) == str(l_term) and 
                str(o_predicate.args[pos]) != str(o_term)) or 
                    (str(l_predicate.args[pos]) != str(l_term) and 
                     str(o_predicate.args[pos]) == str(o_term))):
               ConsistencyError(l_term, o_term, o_predicate)
        else:
            if ((l_predicate == l_term and 
                o_predicate != o_term) or 
                (l_predicate != l_term and 
                 o_predicate == o_term)):
               errors.append(ConsistencyError(l_term, o_term, match))
    return errors


def check_consistency(match):
    '''
    Given a set of matches that need to be respected checks if the output program fulfills them
    From the base predicate recursively checks its arguments
    :param match: a pair of predicates (label, output) that should correspond
    '''
    errors = []
    for ind, m in enumerate(match):
        l_predicate, o_predicate = m
        for pos, arg in enumerate(l_predicate.args):
            if arg.arity > 0 and arg.functor not in ignore:
                # if the argument is a predicate check recursively
                nested_errors = check_consistency([(l_predicate.args[pos], o_predicate.args[pos])])
                errors.extend(nested_errors)
            else:
                # otherwise check if the two arguments respect the matching
                for lp, op in match[ind:]:
                    nested_errors = check_bind((lp,op), l_predicate.args[pos], o_predicate.args[pos])
                    errors.extend(nested_errors)
    return errors

def check_signature(predicate):
    if predicate.arity > 0 and predicate.functor not in ignore: 
        if not predicate.functor in predicates.keys():
            return [NameError(predicate.functor)]
        elif predicate.arity not in predicates[predicate.functor]:
            return [ArityError(predicate.functor)]
        else:
            errors = []
            for arg in predicate.args:
                nested_errors = check_signature(arg)
                errors.extend(nested_errors)
            return errors
    else:
        return []


def check_signatures(program):
    '''
    Given a set of predicates checks:
    if the name is among the predicates of the intermediate language
    if the arity correspponds
    '''
    errors = []
    for predicate in program:
        pred_errors = check_signature(predicate)
        errors.extend(pred_errors)
    return errors

def check_consts(out_pred, label_pred):
    '''
    Compares constants of predicates with same functors
    :returns: list of errors (possibly more than one due to nested predicates)
    '''
    errors = []
    for i in range(0, len(label_pred.args)):
        if label_pred.args[i].arity > 0:
            # if the argument is a predicate check recursively
            if i < len(out_pred.args):
                nested_errors = check_consts(out_pred.args[i], label_pred.args[i])
                errors.extend(nested_errors)
        elif str(type(label_pred.args[i]))[-10:-2] == "Constant":
            try:
                subsumes(label_pred, out_pred)
            except:
                errors.extend([ConstError(out_pred,label_pred)])
        else:
            pass  #ignore variables
    return errors


def compare (out, label):
    '''
    Check if for each predicate in the label program there is a predicate in the output program that unifies with it
    :param out: predicate output of the NN
    :param label: predicate from label program
    '''
    match = []
    matched_out = {}
    matched_lab = {}
    already_matched = lambda l, o: str(l) in matched_lab or str(o) in matched_out
    checklist = [] # we keep a list of failed unifications to check constants after the matching
    errors = []
    for l_predicate in label:
        # u_predicate = loose_const(l_predicate)
        u_predicate = l_predicate
        # check if there is in the output a predicate that unifies with the label predicate
        for o_predicate in out:
            try:
                if l_predicate == o_predicate and not already_matched(l_predicate, o_predicate):
                    matched_out[str(o_predicate)] = str(l_predicate)
                    matched_lab[str(l_predicate)] = str(o_predicate)
                    match.append((l_predicate, o_predicate))
                else:
                    subsumes(u_predicate, o_predicate)
                    if not already_matched(l_predicate, o_predicate):
                        matched_out[str(o_predicate)] = str(l_predicate)
                        matched_lab[str(l_predicate)] = str(o_predicate)
                        match.append((l_predicate, o_predicate))
            except UnifyError:
                # if unification fails check if that's due to numbers or constant labels
                checklist.append((u_predicate, l_predicate, o_predicate))
    matched_errors = []
    for u_predicate, l_predicate, o_predicate in checklist:
        if str(o_predicate) not in matched_out and \
            str(l_predicate) not in matched_lab and \
            u_predicate.functor == o_predicate.functor and \
            str(o_predicate) not in matched_errors:
            errors.extend(check_consts(o_predicate, u_predicate))
            matched_errors.append(str(o_predicate))
    for l_predicate in label:
        if str(l_predicate) not in matched_lab:
            name = str(l_predicate.functor)
            if name == "take" or name == "take_wr":
                errors.append(TakeError())
            else:
                errors.append(MissingError(str(l_predicate)))
    return match, errors


def loose_const(term):
    '''
    For each predicate replaces each set name with a variable for the unification check
    :param term: a logical term as defined in logic.py
    '''
    if term.functor == "aggcmp":
        if term.arity == 5:
            return Term(term.functor, Var("Set"), term.args[1], term.args[2], term.args[3], term.args[4])
        else:
            return Term(term.functor, Var("Set"), term.args[1], term.args[2], term.args[3])
    elif term.functor == "all":
        return Term(term.functor, Var("Set"), term.args[1])
    elif term.functor == "all_diff":
        return Term(term.functor, Var("Set"), term.args[1])
    elif term.functor == "all_same":
        return Term(term.functor, Var("Set"), term.args[1])
    elif term.functor == "atleast":
        return Term(term.functor, term.args[0], Var("Set"), term.args[2])
    elif term.functor == "atmost":
        return Term(term.functor, term.args[0], Var("Set"), term.args[1])
    elif term.functor == "exactly":
        return Term(term.functor, term.args[0], Var("E"), term.args[2])
    elif term.functor == "group":
        return Term(term.functor, Var("G"))
    elif term.functor == "less_than":
        return Term(term.functor, term.args[0], Var("Set"), term.args[2])
    elif term.functor == "more_than":
        return Term(term.functor, term.args[0], Var("Set"), term.args[2])
    elif term.functor == "none":
        return Term(term.functor, Var("Set"), term.args[1])
    elif term.functor == "nth":
        return Term(term.functor, term.args[0], Var("Set"), term.args[2])
    elif term.functor == "rel":
        if term.arity == 3:
            return Term(term.functor, term.args[0], Var("Set"), term.args[2])
        else:
            return Term(term.functor, term.args[0], Var("Set"))
    elif term.functor == "rest":
        return Term(term.functor, Var("R"))
    elif term.functor == "size":
        return Term(term.functor, Var("S"), term.args[1])
    elif term.functor == "some":
        return Term(term.functor, Var("Set"), term.args[1])
    elif term.functor == "take" or term.functor == "take_wr":
        if term.args[0].functor == "rest":
            return Term(term.functor, loose_const(term.args[0]), Var("To"), term.args[2])
        else:
            return Term(term.functor, Var("From"), Var("To"), term.args[2])
    elif term.functor == "union":
        # args[1] is the list of partitions
        partition = []
        for p, set in enumerate(term2list(term.args[1])):
            name = "P"+str(p)
            partition.append(Var(name))
        return Term(term.functor, Var("Set"), partition)
    elif term.functor == "v":
        return Term(term.functor, Var("Set"), terms.args[1])
    elif term.functor not in ignore and term.arity > 0:
        if term.arity > 1:
            return Term(term.functor, *list(map(loose_const,term.args)))
        else:
            return Term(term.functor, loose_const(term.args[0]))
    else:
        return term

def parse_file(filename):
    with open(filename, "r") as f:
        return parse_text(f.read())


def parse_text(text):
    program = []
    parsed = PrologParser(PrologFactory()).parseString(text)
    for s in parsed:
        program.append(s)
    return program


def eval(output, label):
    '''
    :param output: the program from the NN
    :param label: the program from the annotator
    '''
    # check syntax
    try:
        out_prog = parse_text(output)
    except ParseError as e:
        print('ParseError:', e)
        return [ParsingError()]

    # check predicates
    errors = check_signatures(out_prog)

    # check correspondence
    try:
        lab_prog = parse_text(label)
    except ParseError as e:
        print('ParseError:', e)
        return errors.append(ParsingError())

    matching, matching_errors = compare(out_prog, lab_prog)
    errors.extend(matching_errors)

    # check name consistency
    consistency_errors = check_consistency(matching)
    errors.extend(consistency_errors)
    
    return errors

def error_counter(errors):
    '''
    Statistics for errors found in an output
    :param errors: the list of errors i.e. classes from this file
    :returns: a dictionary type_of_error:errors_of_that_type and a counter of the type of errors
    '''

    errors_type = [error.errtype for error in errors]
    n_errors = Counter(errors_type)
    err_by_type = {}
    for typ in n_errors.keys():
        err_by_type[typ] = []
        for error in errors:
            if error.errtype == typ:
                err_by_type[typ].append(error)
    return (err_by_type, n_errors)

def compare_files(out, lab):
    o = open(out, "r").read()
    l = open(lab, "r").read()
    errors = eval(o, l)
    return error_counter(errors)

def compare_folders(pred_dir, gold_dir):
    errors = []
    for gold in os.listdir(os.fsencode(gold_dir)):
        goldname = os.fsdecode(gold)
        if goldname.endswith(".pl_t"):
            basename = os.path.splitext(goldname)[0]
            print(basename)
            pred = basename + ".pl_p"
            pred_path = os.fsencode(os.path.join(pred_dir,pred))
            gold_path = os.fsencode(os.path.join(gold_dir, goldname))
            l = open(gold_path, "r").read()
            o = open(pred_path, "r").read()
            errors += eval(o, l)
    return error_counter(errors)



if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('pred', help='file name')
    parser.add_argument('gold', help='file name')
    args = parser.parse_args()
    if os.path.isdir(args.gold):
        errors = compare_folders(args.pred, args.gold)
    else:
        errors = compare_files(args.pred, args.gold)
    print(errors)