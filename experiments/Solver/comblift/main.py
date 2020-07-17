import argparse
import portion
import operator, functools

from problog.parser import PrologParser
from problog.parser import ParseError
from problog.program import PrologFile
from problog.logic import Clause, term2list

from problem import *
from formulas import *


reserved = ["count", "query", "size", "pos", "in", "part"]

def add_clause(problem, cl):
    problem.add_choice_formula(cl.head,cl.body)

def add_statement(problem, stmt):
    if stmt.functor == 'structure':
        s = Structure(*stmt.args)
        problem.add_structure(s)
    elif stmt.functor not in reserved:
        if len(stmt.args) == 1:
            bounds = term2list(stmt.args[0])
            ivs = [portion.closed(*bounds)]
        else:
            entities = list(map(problem.add_entity, term2list(stmt.args[1])))
            entities.sort()
            ivs = []
            i = 0
            while i< len(entities):
                low = entities[i]
                while i <len(entities)-1 and entities[i]+1 == entities[i+1]: i +=1
                hi = entities[i]
                if hi - low >=1:
                    ivs.append(portion.closed(low, hi))
                else:
                    ivs.append(portion.singleton(low))
                i += 1
        d = Domain(stmt.functor, functools.reduce(lambda a,b: a.union(b), ivs, portion.empty()))
        problem.add_domain( d)
    elif stmt.functor == "count":
        name = stmt.args[0]
        f = stmt.args[1]
        problem.add_counting_formula(f)
    elif stmt.functor == "query":
        q = stmt.args[0]
        problem.add_query(q)
    elif stmt.functor == "size":
        name = stmt.args[0]
        size = stmt.args[1]
        problem.add_size(name, size.compute_value())
    elif stmt.functor == "pos":
        problem.add_choice_formula(stmt, None)
    elif stmt.functor == "in":
        problem.add_choice_formula(stmt, None)
    elif stmt.functor == "part":
        problem.add_choice_formula(stmt, None)
    else:
        pass

def parse_file(filename):
    problem = Problem()
    program = PrologFile(filename)
    for stmt in program:
        if isinstance(stmt, Clause):
            add_clause(problem, stmt)
        else:
            add_statement(problem, stmt)
    print(problem)
    sol = problem.solve()
    print("count: ", sol)

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('program', help='file name')
    args = parser.parse_args()
    parse_file(args.program)