#! /usr/bin/env python

from __future__ import print_function

import sys
import re
import subprocess
import time

import pyparsing

par1 = pyparsing.Literal('(').suppress()
par2 = pyparsing.Literal(')').suppress()
comma = pyparsing.Literal(',').suppress()

integer = pyparsing.Word(pyparsing.nums).setParseAction(lambda t:int(t[0]))
real = (integer + "." + integer).setParseAction(lambda t: float(''.join(map(str, t))))

func = (pyparsing.Word(pyparsing.alphas,exact=1) + par1 + integer + comma + integer + par2).setParseAction(lambda t: [t])
negnumber = ('-' + (real | integer)).setParseAction(lambda t: -t[1])
operand = real | integer | negnumber | func


expop = pyparsing.Literal('^')
signop = pyparsing.oneOf('+ -')
multop = pyparsing.oneOf('* /')
plusop = pyparsing.oneOf('+ -')
factop = pyparsing.Literal('!')
expop = pyparsing.oneOf('^ e')

expr = pyparsing.operatorPrecedence( operand,
    [("!", 1, pyparsing.opAssoc.LEFT),
     (expop, 2, pyparsing.opAssoc.RIGHT),
     (signop, 1, pyparsing.opAssoc.RIGHT),
     (multop, 2, pyparsing.opAssoc.LEFT),
     (plusop, 2, pyparsing.opAssoc.LEFT),]
    )

def compute(ex, txt):
    if not txt:
        return None
    elif txt in '?-':
        return None
    else:
        try:
            return float(txt)
        except:
            pass

    try:
        e = expr.parseString(txt)
        return compute_expr(e)
    except pyparsing.ParseException as err:
        print (ex, 'Parse error:', err, file=sys.stderr)
    except Exception as err:
        print (ex, 'Compute error:', err, file=sys.stderr)

def compute_expr(lst):
    try:
        len(lst)
    except:
        return float(lst)
    if len(lst) == 1:
        return compute_expr(lst[0])
    elif len(lst) == 2:
        if lst[1] == '!':
            return prod(range(1, int(compute_expr(lst[0]) + 1)))
        elif lst[0] == '-':
            return -compute_expr(lst[1])
    elif len(lst) == 3:
        op1, op, op2 = lst
        if op == '+':
            return compute_expr(op1) + compute_expr(op2)
        elif op == '/':
            return float(compute_expr(op1)) / compute_expr(op2)
        elif op == '*':
            return compute_expr(op1) * compute_expr(op2)
        elif op == '-':
            return compute_expr(op1) - compute_expr(op2)
        elif op == '^' or op == 'e':
            return compute_expr(op1) ** compute_expr(op2)
        elif op1 == 'C':
            return choose(op, op2)
    elif len(lst) > 3:
        return compute_expr([lst[:-2], lst[-2], lst[-1]])

    print ('Unexpected: %s' % lst, file=sys.stderr)
    raise ValueError()


def prod(rs):
    p = 1
    for r in rs:
        p *= r
    return p


def choose(n, m):
    m1, m2 = min(n-m, m), max(n-m, m)
    return prod(range(m2 + 1, n + 1)) / prod(range(1, m1 + 1))


def main(filenames):

    from multiprocessing import Pool
    pool = Pool(4)
    for result in pool.imap_unordered(check, filenames):
        print (result)


def check(filename):
    with open(filename) as f:
        data = f.readlines()
        solution = data[0].split('## Solution=')
        if len(solution) > 1:
            solution = solution[1].strip()
        else:
            solution = None

    given = compute(filename, solution)

    ts = time.time()
#        if given is not None:
    cmd = ['bash', 'run.sh', filename]  # TODO complete command
    try:
        problog_output = subprocess.check_output(cmd).decode()
        try:
            found = float(problog_output.split('\n')[0].rsplit(None, 1)[1])
            return ' '.join(map(str, (filename, given, found, same(given, found), time.time() - ts)))
        except IndexError:
            return ' '.join(map(str, (filename, given, 'ERROR', 'no output', time.time() - ts)))
    except subprocess.CalledProcessError as err:
        return ' '.join(map(str, (filename, given, 'ERROR', err.output.decode().split('\n')[0], time.time() - ts)))

def same(a, b):
    if a is None:
        return 'Missing'
    elif b == 0 and a > 0:
        return False
    elif a < 1e-5:
        return abs(a - b) < 1e-10
    else:
        return abs(a - b) < 1e-5


if __name__ == '__main__':
    main(sys.argv[1:])
