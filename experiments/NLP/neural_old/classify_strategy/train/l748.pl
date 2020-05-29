% L748: Two six-sided dice, with sides numbered 1, 2, 3, 4, 5 and 6, are rolled.  What is the probability that exactly one of the two dice shows a 3? ## Solution= 5/18

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-21, 2).


probability(exactly(1, 1-21, 3)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

