% H866: A factory produces its entire output with three machines.  Machines I, II, and III produce 50 percent, 30 percent, and 20 percent of the output, but 4 percent, 2 percent, and 4 percent of their outputs are defective, respectively.  What fraction of the total output is defective? ## Solution= .034

group(2-1).

given(exactly(rel(4/100, 2-1, i), 2-1, and(defective, i))).
given(exactly(rel(4/100, 2-1, iii), 2-1, and(defective, iii))).
given(exactly(rel(50/100, 2-1), 2-1, i)).
given(exactly(rel(2/100, 2-1, ii), 2-1, and(defective, ii))).
given(exactly(rel(20/100, 2-1), 2-1, iii)).
given(exactly(rel(30/100, 2-1), 2-1, ii)).

take(2-1, 3-2, 1).

probability(all(3-2, defective)).

property(machine, [i, ii, iii]).
property(property, [defective]).

