import argparse
import re
from collections import defaultdict

from problog.parser import PrologParser
from problog.parser import ParseError
from problog.program import PrologFactory
from problog.engine_unify import subsumes, UnifyError
from problog.logic import Term, Var

predicates = {
    "aggcmp": [5],
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
    "partition": [2],
    "probability": [1],
    "property": [2],
    "rel": [2,3],
    "rest": [1],
    "size": [2],
    "some": [1],
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

# given one match and two corresponding terms from label and output programs, checks if the terms respect the match
def check_bind(match, l_term, o_term):
    l_predicate, o_predicate = match
    for pos, arg in enumerate(l_predicate.args):
        if arg.arity > 0 and arg.functor not in ignore:
            bind((l_predicate.args[pos], o_predicate.args[pos]), l_term, o_term)
        elif str(arg.functor) == "'-'": #special case: '-' is not subtraction but a normal char: compare strings
            if (str(l_predicate.args[pos]) == str(l_term) and str(o_predicate.args[pos]) != str(o_term)) or (str(l_predicate.args[pos]) != str(l_term) and str(o_predicate.args[pos]) == str(o_term)):
               raise EvalError("inconsistent use of " + str(l_term) + " and " + str(o_term) + " in " + str(o_predicate))
        else:
            if (l_predicate == l_term and o_predicate != o_term) or (l_predicate != l_term and o_predicate == o_term):
               raise EvalError("inconsistent use of " + l_term + " and " + o_term + "in" + match)

# given a set of matches that need to be respected checks if the output program fulfills them
def check_consistency(match):
    for ind, m in enumerate(match):
        l_predicate, o_predicate = m
        for pos, arg in enumerate(l_predicate.args):
            if arg.arity > 0 and arg.functor not in ignore:
                # if the argument is a predicate check recursively
                check_consistency([(l_predicate.args[pos], o_predicate.args[pos])])
            else:
                # otherwise check if the two arguments respect the matching
                for lp, op in match[ind:]:
                    check_bind((lp,op), l_predicate.args[pos], o_predicate.args[pos])


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


# Given a set of predicates checks:
# if the name is among the predicates of the intermediate language
# if the arity correspponds
def check_signatures(program):
    for predicate in program:
        check_signature(predicate)


# Check if for each predicate in the label program there is a predicate in the output program that unifies with it
def compare (out, label):
    match = []
    matched = []
    for l_predicate in label:
        u_predicate = loose_const(l_predicate)
        # check if there is in the output a predicate that unifies with the label predicate
        for o_predicate in out:
            try:
                if l_predicate == o_predicate:
                    matched.append(str(l_predicate))
                    match.append((l_predicate, o_predicate))
                else:
                    subsumes(u_predicate, o_predicate)
                    if str(l_predicate) not in matched:
                        matched.append(str(l_predicate))
                        match.append((l_predicate, o_predicate))
            except UnifyError:
                pass
    for l_predicate in label:
        if str(l_predicate) not in matched:
            raise EvalError("could not find predicate " + str(l_predicate))
            return None
    return match

# for each predicate replaces each set name with a variable for the unification check
def loose_const(term):
    if term.functor == "aggcmp":
        return Term(term.functor, Var("Set"), term.args[1], term.args[2], term.args[3], term.args[4])
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
        return Term(term.functor, term.args[0], Var("Set"), terms.args[2])
    elif term.functor == "more_than":
        return Term(term.functor, term.args[0], Var("Set"), terms.args[2])
    elif term.functor == "none":
        return Term(term.functor, Var("Set"), terms.args[1])
    elif term.functor == "nth":
        return Term(term.functor, term.args[0], Var("Set"), terms.args[2])
    elif term.functor == "rel":
        if term.arity == 3:
            return Term(term.functor, term.args[0], Var("Set"), terms.args[2])
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
        partition = []
        for p, set in enum(term.args[1]):
            partition.append(Var("P"+p))
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
    # check syntax
    try:
        out_prog = parse_text(output)
    except ParseError as e:
        print('ParseError:', e)
        return None

    # check predicates
    try:
        check_signatures(out_prog)
    except EvalError as e:
        print("Signature error:", e)
        return None

    # check correspondence
    try:
        lab_prog = parse_text(label)
        #upper_prog = list(map(loose_const, lab_prog))
        matching = compare(out_prog, lab_prog)
    except EvalError as e:
        print("Correspondence error:", e)
        return None

    # check name consistency
    try:
        check_consistency(matching)
    except EvalError as e:
        print("Consistency error:", e)
        return None

def main(out, lab):
    o = open(out, "r").read()
    l = open(lab, "r").read()
    eval(o, l)

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('out', help='file name')
    parser.add_argument('lab', help='file name')
    args = parser.parse_args()
    main(args.out, args.lab)
