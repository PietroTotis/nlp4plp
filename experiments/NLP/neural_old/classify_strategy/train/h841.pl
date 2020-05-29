% H841: A fair die, numbered 1, 2, 3, 4, 5 and 6, is tossed eight times.  What is the probability of exactly two 3 's, three 1 's, and three 6 's? ## Solution= .000333

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-19, 8).


probability(and(and(exactly(2, 1-19, 3), exactly(3, 1-19, 1)), exactly(3, 1-19, 6))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

