% H247: Suppose we roll a die 15 times.  A die has 6 sides, with the numbers 1, 2, 3, 4, 5, 6 on each side.  What is the probability that we do not see all 6 numbers at least once? ## Solution= .355787

group(1-5).
size(1-5, 6).

given(exactly(1, 1-5, 2)).
given(exactly(1, 1-5, 1)).
given(exactly(1, 1-5, 6)).
given(exactly(1, 1-5, 4)).
given(exactly(1, 1-5, 5)).
given(exactly(1, 1-5, 3)).

take_wr(1-5, 1-3, 15).


probability(not(and(atleast(1, 1-3, 1), and(atleast(1, 1-3, 2), and(atleast(1, 1-3, 3), and(atleast(1, 1-3, 4), and(atleast(1, 1-3, 5), atleast(1, 1-3, 6)))))))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

