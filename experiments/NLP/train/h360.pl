% H360: A bag contains 7 white, 9 blue and 4 red marbles.  If three marbles are pulled from the bag, what is the probability that two are blue and one is red? ## Solution= 12/95

group(1-2).

given(exactly(9, 1-2, blue)).
given(exactly(7, 1-2, white)).
given(exactly(4, 1-2, red)).

take(1-2, 2-3, 3).

probability(and(exactly(2, 2-3, blue), exactly(1, 2-3, red))).

property(property, [blue, white, red]).

