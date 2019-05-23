% L351: Throw two fair dice with 6 sides, labeled 1, 2, 3, 4, 5 and 6, one after the other.  What is the probability that the first die is 3 and the second not 3? ## Solution= 5/36

group(1-4).
size(1-4, 6).

given(exactly(1, 1-4, 2)).
given(exactly(1, 1-4, 1)).
given(exactly(1, 1-4, 6)).
given(exactly(1, 1-4, 4)).
given(exactly(1, 1-4, 5)).
given(exactly(1, 1-4, 3)).

take_wr(1-4, 1-1, 2).


probability(and(nth(1, 1-1, 3), nth(2, 1-1, not(3)))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

