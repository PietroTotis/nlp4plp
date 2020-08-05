import os
import argparse
import time
import portion
import subprocess
import pyinotify
from comblift.parser import Parser
from comblift.formulas import PosFormula, InFormula

class ModHandler(pyinotify.ProcessEvent):
    def process_IN_CLOSE_WRITE(self, evt):
        pass


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
            # does not work with complex domain (real dformulas and not just constants)
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
        op = cof.op
        if cof.op == "=<":
            op = "<="
        minizinc += f"constraint sum({range})(bool2int({elem} in {cof.dformula.domain.name})) {op} {cof._val};\n"
    minizinc += "solve satisfy;"
    return minizinc

def count_sols(filename):
    f = open(filename, "r")
    n = 0 
    for l in f.read():
        if l[-1] == ";":
            n +=1
    f.close()
    return n


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('program', help='file name')
    args = parser.parse_args()
    parser = Parser(args.program)
    problem = parser.parsed
    minizinc = problem2minizinc(problem)
    mininame = args.program[:-3] + "_mini.mzn"
    minipath = os.path.abspath(mininame)
    minifile = open(mininame, "w")
    minifile.write(minizinc)
    minifile.close()
    print("Running solver...")
    start = time.time()
    count = problem.solve(log=False)
    finish = time.time()
    print(f"Solver: {count} in {finish-start:.2f}s")
    # print(f"Running minizinc on {mininame}...")
    start = time.time()
    out = "tests/sol.out"
    # miniproc = subprocess.Popen(f"mzn-gecode {mininame} -a -o {out}", shell=True, text=True)
    p = subprocess.Popen(
		["minizinc", mininame, "-s", "-a"], 
		stdout=subprocess.PIPE, stderr=subprocess.PIPE, preexec_fn=os.setsid)
    try:
        stdout, stderr = p.communicate(timeout=60*10)
        lines = stdout.decode('utf-8').split("\n")
        init_time = float(lines[-12].split('=')[1])
        solve_time = float(lines[-11].split('=')[1])
        time = init_time + solve_time
        minicount = int(lines[-10].split('=')[1])
        print(f"Minizinc: {minicount} in {time:.2f}s")
        if minicount == count:
            print("\t OK")
        else:
            print("\t FAIL")
    except subprocess.TimeoutExpired:
	    print("FAIL")
	    p.terminate()
	    p.kill()
	    os.killpg(p.pid, signal.SIGINT)
	    print("KILLED")
