% H444: A class contains seven boys and eight girls.  If two are selected at random to leave the room, what is the probability that they are of different sexes? ## Solution= 8/15

group(1-2).

given(exactly(8, 1-2, girl)).
given(exactly(7, 1-2, boy)).

take(1-2, 2-2, 2).

probability(all_diff(2-2,sex)).

property(sex, [boy, girl]).

