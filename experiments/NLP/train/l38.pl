% L38: You throw a die twice.  The die has six sides, numbered 1, 2, 3, 4, 5 and 6.  What is the probability of throwing a six and then another six? ## Solution= 1/36

group(1-4).
size(1-4, 6).

given(exactly(1, 1-4, 2)).
given(exactly(1, 1-4, 1)).
given(exactly(1, 1-4, 6)).
given(exactly(1, 1-4, 4)).
given(exactly(1, 1-4, 5)).
given(exactly(1, 1-4, 3)).

take_wr(1-4, 1-2, 2).


probability(all(1-2, 6)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

