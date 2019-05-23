% L498: A random number is repeatedly drawn from 1, 2, 3, 4, 5, 6, 7, 8, 9 and 10.  What is the probability that not all of the numbers 1, 2, ..., 10 show up in 50 drawings? ## Solution= 0.0509

group(1-3).
size(1-3, 10).

given(exactly(1, 1-3, 9)).
given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 7)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 10)).
given(exactly(1, 1-3, 3)).
given(exactly(1, 1-3, 8)).

take_wr(1-3, 1-6, 50).


probability(not(and(and(and(and(atleast(1, 1-6, 1), atleast(1, 1-6, 2)), and(atleast(1, 1-6, 3), atleast(1, 1-6, 4))), and(atleast(1, 1-6, 5), atleast(1, 1-6, 6))), and(and(atleast(1, 1-6, 7), atleast(1, 1-6, 8)), and(atleast(1, 1-6, 9), atleast(1, 1-6, 10)))))).

property(outcome(0), [10, 1, 3, 2, 5, 4, 7, 6, 9, 8]).

