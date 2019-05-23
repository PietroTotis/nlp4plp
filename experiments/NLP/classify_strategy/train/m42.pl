% M42:  If a fair six-sided die, each side labeled 1, 2, 3, 4, 5, 6, is tossed twice, what is the probability that the first toss will be a number less than 4 and the second toss will be a number greater than 4? ## Solution= 1/6

group(1-5).
size(1-5, 6).

given(exactly(1, 1-5, 2)).
given(exactly(1, 1-5, 1)).
given(exactly(1, 1-5, 6)).
given(exactly(1, 1-5, 4)).
given(exactly(1, 1-5, 5)).
given(exactly(1, 1-5, 3)).

take_wr(1-5, 1-23, 2).


probability(and(nth(1, 1-23, or(1, or(2, 3))), nth(2, 1-23, or(5,6)))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

