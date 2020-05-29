% H94: In a ten-question true or false exam, find the probability that a student gets a grade of 70 percent or better by guessing. ## Solution= .171875

group(1-24).
size(1-24, 2).

given(exactly(1, 1-24, false)).
given(exactly(1, 1-24, true)).

take_wr(1-24, 1-7, 10).


probability(atleast(7, 1-7, true)).

property(outcome(0), [false, true]).

