% L970: Two dice with 6 sides labeled 1, 2, 3, 4, 5 and 6, are rolled.  If the two faces are different, what is the probability that at least one is a six? ## Solution= 1/3

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).

take_wr(1-2, 1-20, 2).
observe(all_diff(1-20,outcome(0))).


probability(atleast(1, 1-20, 6)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

