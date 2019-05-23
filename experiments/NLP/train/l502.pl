% L502: Three fair six-sided dice, labeled 1, 2, 3, 4, 5 and 6, are rolled.  What is the probability that the sum of the three outcomes is 10 given that the three dice show different outcomes? ## Solution= 18/120

group(1-4).
size(1-4, 6).

given(exactly(1, 1-4, 2)).
given(exactly(1, 1-4, 1)).
given(exactly(1, 1-4, 6)).
given(exactly(1, 1-4, 4)).
given(exactly(1, 1-4, 5)).
given(exactly(1, 1-4, 3)).

take_wr(1-4, 1-20, 3).
observe(all_diff(1-20,outcome(0))).


probability(aggcmp(1-20,outcome(0),sum,=:=,10)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

