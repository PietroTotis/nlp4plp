import argparse
import time
import portion
import subprocess
from comblift.parser import Parser
from comblift.formulas import PosFormula, InFormula

def problem2minizinc(problem):
    minizinc = 'include "globals.mzn";\n'
    for dom in problem.domains.values():
        minizinc += f"set of int: {dom.name} = {{"
        minizinc += ",".join(list(map(str,portion.iterate(dom.elements, step =1))))
        minizinc += "};\n"
    minizinc += f"int: n = {problem.structure.size};\n"
    sequence = problem.structure.type == "sequence"
    subset = problem.structure.type == "subset"
    if sequence:
        minizinc += f"array[1..n] of var {problem.container}: sequence;\n"
        if problem.structure.spec:
            minizinc += "constraint alldifferent(sequence);\n"
    elif subset:
        minizinc += f"var set of {problem.container}: subset;\n"

    for chf in problem.choice_formulas:
        if isinstance(chf, PosFormula):
            minizinc += f"constraint sequence[{chf.pos}] in {chf.dformula.domain.name};\n"
        elif isinstance(chf, InFormula):
            minizinc += f"constraint {chf.entity} in sets;\n"

    for cof in problem.count_formulas:
        if sequence:
            range = "i in 1..n"
            elem = "sequence[i]"
        elif subset:
            range = "i in subset"
            elem = "i"
        minizinc += f"constraint sum({range})(bool2int({elem} in {chf.dformula.domain.name})) {cof.op} {cof._val};"
    return minizinc

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('program', help='file name')
    args = parser.parse_args()
    parser = Parser(args.program)
    problem = parser.parsed
    minizinc = problem2minizinc(problem)
    mininame = args.program[:-3] + "_mini.mzn"
    minifile = open(mininame, "w")
    minifile.write(minizinc)
    print("Running solver...")
    start = time.time()
    count = problem.solve()
    finish = time.time()
    print(f"Problem solved: {count} in {finish-start:.2f}s")
    print(f"Running minizinc on {mininame}...")
    miniout = subprocess.run(f"mzn-gecode {mininame} -a -s", capture_output=True, text=True, shell=True)
    print(miniout.stdout)
    