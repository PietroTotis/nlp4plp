% H445: A class contains seven boys and eight girls.  On two separate occasions, a child is selected at random to leave the room.  What is the probability that the two choices result in children of different sexes? ## Solution= 112/225

group(1-2).

given(exactly(8, 1-2, girl)).
given(exactly(7, 1-2, boy)).

take_wr(1-2, 2-4, 2).

probability(all_diff(2-4,sex)).

property(sex, [boy, girl]).

