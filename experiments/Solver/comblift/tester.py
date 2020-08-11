import os
import argparse
import time
import portion
import subprocess
import pyinotify
import random
import itertools
from comblift.parser import Parser
from comblift.formulas import PosFormula, InFormula

ops = [">","<","<=",">=","\=","=="]

class ModHandler(pyinotify.ProcessEvent):
    def process_IN_CLOSE_WRITE(self, evt):
        pass

def get_random_complex_dom(n_domains):
    type = random.randint(1,4)
    if type <= 2:
        n_dom = random.randint(2,n_domains)
        dom = f"dom{n_dom}"
    if type == 2:
        dom = f"not({dom})"
    if type > 2:
        n_dom_left = random.randint(2,n_domains)
        n_dom_right = random.randint(2,n_domains)
        neg_left = random.randint(0,1)
        neg_right = random.randint(0,1)
        dom_left = f"dom{n_dom_left}"
        dom_right = f"dom{n_dom_right}"
        if neg_left == 1:
            dom_left = f"not({dom_left})"
        if neg_right == 1:
            dom_right = f"not({dom_right})"
        if type == 3:
            dom = f"and({dom_left},{dom_right})"
        else:
            dom = f"or({dom_left},{dom_right})"
    return dom

def generate_problem(n_domains,u_size,is_sequence,struct_size,spec, choice_constraints,counting_constraints):
    # random.seed(6)
    problem = ""
    universe_size = u_size
    problem += f"universe([1,{universe_size}]).\n"
    for i in range(2,n_domains+1):
        base = random.randint(1,universe_size)
        size = random.randint(1,universe_size-base)
        problem+= f"dom{i}([{base},{base+size}]).\n"
    if is_sequence:
        spec_val = "false"
        if spec:
            spec_val = "true"
        problem += f"structure(s,sequence,{spec},universe).\n"
    else:
        spec_val = "false"
        if spec:
            spec_val = "true"
        problem += f"structure(s,subset,{spec},universe).\n"
    if choice_constraints and is_sequence:
        n_constr = random.randint(1,struct_size // 2)
        for i in range(1,n_constr):
            pos = random.randint(1,struct_size)
            dom = get_random_complex_dom(n_domains)
            problem += f"pos({pos},{dom}).\n"
    if counting_constraints:
        n_constr = random.randint(1,struct_size // 2)
        for i in range(1,n_constr):
            n = random.randint(1,struct_size)
            dom = get_random_complex_dom(n_domains)
            op = ops[random.randint(0,5)]
            problem += f"count({dom},{op},{n}).\n"
    return problem

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

def get_n_vars(n):
    vars = []
    for c in range(ord('A'),ord('Z')):
        if len(vars) < n:
            vars.append(c)


def problem2problog(problem):
    problog = ":- use_module(library(aproblog)).\n\
            :- use_semiring(\n\
                sr_plus,   % addition (arity 3)\n\
                sr_times,  % multiplication (arity 3)\n\
                sr_zero,   % neutral element of addition\n\
                sr_one,    % neutral element of multiplication\n\
                sr_pos,\n\
                sr_neg,    % negation of fact label\n\
                sr_negate, \n\
                true,      % requires solving disjoint sum problem?\n\
                true).    % requires solving neutral sum problem?\n\
            sr_zero(0.0).\n\
            sr_one(1.0).\n\
            sr_plus(A, B, C) :- C is A + B.\n\
            sr_times(A, B, C) :- C is A * B.\n\
            sr_pos(A, B, A).\n\
            sr_neg(A, B, 0).\n\
            sr_negate(A, 1.0).\n"
    n = problem.structure.size
    u = problem.domains[problem.universe]
    for i in range(1,n+1):
        problog += ";".join(list(map(lambda e: f"1::v{i}({e})",portion.iterate(u.elements, step =1))))
        problog += ".\n"
    sequence = problem.structure.type == "sequence"
    subset = problem.structure.type == "subset"
    if sequence:
        problog += f"sequences :- "
    else:
        problog += f"subsets :- "
    var_pred = []
    vars = []
    for i in range(1,n+1):
        var_pred.append(f"v{i}(V{i})")
        vars.append(f"V{i}")
    problog += ",".join(var_pred)
    if sequence and problem.structure.spec or subset:
        problog += ", "
        if sequence and problem.structure.spec or subset and not problem.structure.spec:
            sign = "<"
        elif subset and problem.structure.spec:
            sign = "=<"
        ineq = []
        for pair in itertools.product(vars,vars):
            if pair[0] < pair[1]:
                ineq.append(f"{pair[0]} < {pair[1]} ")
        problog += ",".join(ineq)
    problog += ".\n"
    if sequence:
        problog+="query(sequences).\n"
    else:
        problog+="query(subsets).\n"
    return problog

def compare2aproblog(problem):
    aproblog = problem2problog(problem)
    print(aproblog)
    probname = args.program[:-3] + "_prob.pl"
    probpath = os.path.abspath(probname)
    probfile = open(probname, "w")
    probfile.write(aproblog)
    probfile.close()
    print("Running solver...")
    start = time.time()
    count = problem.solve(log=False)
    finish = time.time()
    print(f"Solver: {count} in {finish-start:.2f}s")
    print("Running aProbLog...")
    p = subprocess.Popen(
		["python3", "/media/windows/Users/pietr/Desktop/PhD/Problog/problog/problog-cli.py", probname], 
		stdout=subprocess.PIPE, stderr=subprocess.PIPE, preexec_fn=os.setsid)
    finish = time.time()
    try:
        stdout, stderr = p.communicate(timeout=60*10)
        out = stdout.decode('utf-8').split(":")
        out = " ".join(out[1].split())
        print(out)
        probcount = int(float(out))
        print(f"aProbLog: {probcount} in {finish-start:.2f}s")
        if probcount == count:
            print("\t OK")
        else:
            print("\t FAIL (check limits of aProblog conversion)")
    except subprocess.TimeoutExpired:
	    print("TIMEOUT")
	    p.terminate()
	    p.kill()
	    os.killpg(p.pid, signal.SIGINT)
	    print("KILLED")


def count_sols(filename):
    f = open(filename, "r")
    n = 0 
    for l in f.read():
        if l[-1] == ";":
            n +=1
    f.close()
    return n

def compare2minizinc(problem):
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
    out = "tests/sol.out"
    # miniproc = subprocess.Popen(f"mzn-gecode {mininame} -a -o {out}", shell=True, text=True)
    start = time.time()
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

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('program', help='file name')
    args = parser.parse_args()
    parser = Parser(args.program)
    problem = parser.parsed
    # print(problem2problog(problem))
    compare2aproblog(problem)
    # print(generate_problem(3,10,True,5,True,True,True))    
