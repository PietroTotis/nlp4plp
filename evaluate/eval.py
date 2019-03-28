import argparse
import re
from collections import defaultdict

from problog.parser import PrologParser
from problog.parser import ParseError
from problog.program import PrologFactory
from problog.engine_unify import subsumes, UnifyError
from problog.logic import Term, Var

predicates = {
    "partition": [2],
    "size": [2],
    "tuple": [1],
    "has_property": [2],
    "take": [2,3],
    "take_wr": [3],
    "question": [2],
    "content": [1],
    "has_property": [3],
    "filter_by": [2],
    "observe": [1],
    "group": [1],
    "probability": [1],
    "exactly": [3],
    "given": [1],
    "property": [2]
}

ignore = ["'+'","'-'","'/'","'*'", "."]

class EvalError(Exception):
    def __init__(self, message):
        self.errtype = self.__class__.__name__
        self.base_message = message


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


# Check if for each predicate in the label there is a predicate in the output that unifies with it
def compare (out, label):

    match = {}

    for l_predicate in label:
        # check if there is in the output a predicate that unifies with the label predicate
        for o_predicate in out:
            try:
                subsumes(l_predicate, o_predicate)
                if l_predicate not in match:
                    match[l_predicate] = o_predicate
            except UnifyError:
                pass

    for l_predicate in label:
        if l_predicate not in match:
            raise EvalError("could not find predicate " + str(l_predicate))

def loose_const(term):
    if term.functor == "group":
        return Term("group", Var("G"))
    elif term.functor == "exactly":
        return Term("exactly", term.args[0], Var("E"), term.args[2])
    elif term.functor == "take_wr":
        return Term("take_wr", Var("From"), Var("To"), term.args[2])
    # TODO: add all predicates
    elif term.functor not in ignore and term.arity > 0:
        if term.arity > 1:
            return Term(term.functor, list(map(loose_const,term.args)))
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
        upper_prog = []
        upper_prog = list(map(loose_const, lab_prog))
        compare(out_prog, upper_prog)
    except EvalError as e:
        print("Correspondence error:", e)
        return None

    # check name consistency



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
