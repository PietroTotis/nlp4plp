import argparse

from eval import parse_file
from problog.logic import Term, Var

ENCODINGS_PATH = "/mnt/01D503E0ADE91930/Users/pietr/Desktop/PhD/nlp4plp_old/code/solver"

id_map = {}
label_id = "L"
num_id = "N"
counter = {
    label_id : 0,
    num_id : 0,
}

ignore = ["'-'", "v"]

def get_id(term,ttype):
    '''
    Given an entity (number od label) return the corresponding identifier (old or new)
    :param entity: number or group/property label
    :param type: label_id/num_id
    '''
    entity = str(term)
    if entity not in id_map:
        new_id = ttype + str(counter[ttype])
        counter[ttype] += 1
        id_map[entity] = new_id

    return id_map[entity]

def convert_term(term):
    '''
    Given a problog statement return recursively the statement with replaced symbols
    :param term: a Problog term (a statement to begin with)
    '''
    if term.arity > 0 and str(term.functor) not in ignore:

        #ignore property first argument
        if term.functor == "property":
            arg = convert_term(term.args[1])
            # uniform/consistent useless first argument
            return Term("property", Term("property"), arg)
            # preserve orginal name
            # return Term("property", term.args[0], arg)
        else:
            args = []
            for arg in term.args:
                args.append(convert_term(arg))
            return Term(term.functor,*args)
    elif str(term.functor) in ignore:
        # if the functor is -, we treat it as part of a label
        identifier = get_id(term,label_id)
        return Var(identifier)
    else:
        if str(type(term))[-10:-2] == "Constant":
            identifier = get_id(term, num_id)
            return Var(identifier)
        else:
            if str(term) == "[]":
                # avoid labelling empty list as one of the members of a list
                return term
            else:
                identifier = get_id(term, label_id)
                return Var(identifier)

def convert(program):
    '''
    :param program: path to an encoding
    '''
    problog_program = parse_file(program)
    for statement in problog_program:
        print(convert_term(statement))


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('program', help='single problem')
    args = parser.parse_args()
    convert(args.program)