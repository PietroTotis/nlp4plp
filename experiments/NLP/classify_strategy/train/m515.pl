% M515: You roll a die with 4 sides, numbered 1, 2, 3, 4.  What is the probability that the outcome is not 2? ## Solution= 3/4

group(1-4).
size(1-4, 4).

given(exactly(1, 1-4, 1)).
given(exactly(1, 1-4, 4)).
given(exactly(1, 1-4, 2)).
given(exactly(1, 1-4, 3)).

take_wr(1-4, 1-2, 1).


probability(all(1-2, not(2))).

property(outcome(0), [1, 3, 2, 4]).

