#!/bin/bash
# minizinc=$(mzn-gecode $1 -a -s)
mzn-gecode $1 -a -o "sol.out"

# solve_time=$(grep solveTive $out)
# echo $solve_time