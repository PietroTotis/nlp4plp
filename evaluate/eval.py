import argparse
import re
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

def add_binding(bindings, binding):
    for l in binding.keys():
        r = binding[l]
        if l in bindings.keys() and bindings[l] != r:
            raise EvalError(f"inconsistent use of {l} as {r} and {bindings[l]}" )
        else:
            bindings[l] = r
    return bindings

def check_bind(l_term, o_term, bindings):
    '''
    Given one match and two corresponding terms from label and output programs, checks if the terms respect the match
    :param match: the root predicates we started from the recursion
    :param l_term: the term from the label at the current level of nesting
    :param o_term: the term from the output of the NN  at the current level of nesting
    '''
    # TODO: take into account commutativity of AND/OR 
    for pos, l_arg in enumerate(l_term.args):
        o_arg = o_term.args[pos]
        if l_arg.arity > 0 and l_arg.functor not in ignore:
            add_binding(bindings, check_bind(l_arg, o_arg, bindings))
        elif l_arg.functor == ".": # do not ignore lists but check they have the same labels in any order
            py_l_arg = set(term2list(l_arg))
            py_o_arg = set(term2list(o_arg))
            if not py_l_arg >= py_o_arg or not py_o_arg >= py_l_arg:
                raise EvalError(f"inconsistent use of lists: {l_arg} =/= {o_arg}" )
        elif str(l_arg.functor) == "'-'": #special case: '-' is not subtraction but a normal char: compare strings
            add_binding(bindings, {str(l_arg):str(o_arg)})
        else:
            add_binding(bindings, {l_arg:o_arg})
    return bindings


def check_consistency(match, bindings):
    '''
    Given a set of matches that need to be respected checks if the output program fulfills them
    From the base predicate recursively checks its arguments
    :param match: a pair of predicates (label, output) that should correspond
    :param bindings: bindings between property names
    '''
    for ind, m in enumerate(match):
        l_predicate, o_predicate = m
        add_binding(bindings, check_bind(l_predicate, o_predicate, bindings))

def check_signature(predicate):
    if predicate.arity > 0 and predicate.functor not in ignore:
        if not predicate.functor in predicates.keys():
            raise EvalError("predicate " + predicate.functor + " is not valid")
            return None
        elif predicate.arity not in predicates[predicate.functor]:
            raise EvalError("predicate " + predicate.functor + " has a wrong number of arguments")
            return None
        else:
            for arg in predicate.args:
                check_signature(arg)
    else:
        pass


def check_signatures(program):
    '''
    Given a set of predicates checks:
    if the name is among the predicates of the intermediate language
    if the arity correspponds
    '''
    for predicate in program:
        check_signature(predicate)


def compare (out, label):
    '''
    Check if for each predicate in the label program there is a predicate in the output program that unifies with it
    :param out: predicate output of the NN
    :param label: predicate from label program
    '''
    match = []
    matched_out = {}
    matched_lab = {}
    already_matched = lambda l,o : str(l) in matched_lab or str(o) in matched_out
    for l_predicate in label:
        u_predicate = loose_const(l_predicate)
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
                pass
    
    for l_predicate in label:
        if str(l_predicate) not in matched_lab:
            raise EvalError("could not find predicate " + str(l_predicate))
            return None
    return match

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
        # return Term(term.functor, term.args[0], Var("Set"), term.args[2])
        return Term(term.functor, term.args[0], Var("Set"), Var("Prop"))
    elif term.functor == "atmost":
        # return Term(term.functor, term.args[0], Var("Set"), term.args[1])
        return Term(term.functor, term.args[0], Var("Set"), Var("Prop"))
    elif term.functor == "exactly":
        # return Term(term.functor, term.args[0], Var("E"), term.args[2])
        return Term(term.functor, term.args[0], Var("Set"), Var("Prop"))
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
    elif term.functor == "property":
        return Term(term.functor, Var("Name"), Var("List"))
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
        return f"Parse error: {e}"

    # check predicates
    try:
        check_signatures(out_prog)
    except EvalError as e:
        return f"Signature error: {e}"

    # check correspondence
    try:
        lab_prog = parse_text(label)
        matching = compare(out_prog, lab_prog)
    except EvalError as e:
        return f"Correspondence error: {e}"

    # check name consistency
    try:
        check_consistency(matching, {})
    except EvalError as e:
        return f"Consistency error: {e}"

    return "ok"


def eval_files(out, lab):
    o = open(out, "r").read()
    l = open(lab, "r").read()
    e = eval(o, l)
    return e


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('out', help='file name')
    parser.add_argument('lab', help='file name')
    args = parser.parse_args()
    e = eval_files(args.out, args.lab)
    print(e)
