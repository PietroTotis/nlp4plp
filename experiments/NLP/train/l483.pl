% L483: In a bolt factory, machines A, B and C manufacture 25 percent, 35 percent and 40 percent respectively of the total output of bolts.  Of their outputs, 5 percent, 4 percent and 2 percent respectively are defective.  A bolt is chosen at random from the factory 's output and found to be defective.  What is the probability that it came from machine A? ## Solution= 25/69

group(1-4).

given(exactly(rel(2/100, 1-4, c), 1-4, and(c, defective))).
given(exactly(rel(4/100, 1-4, b), 1-4, and(b, defective))).
given(exactly(rel(5/100, 1-4, a), 1-4, and(a, defective))).
given(exactly(rel(40/100, 1-4), 1-4, c)).
given(exactly(rel(35/100, 1-4), 1-4, b)).
given(exactly(rel(25/100, 1-4), 1-4, a)).

take(1-4, 3-2, 1).
observe(all(3-2, defective)).

probability(all(3-2, a)).

property(machine, [a, c, b]).
property(state, [defective]).

