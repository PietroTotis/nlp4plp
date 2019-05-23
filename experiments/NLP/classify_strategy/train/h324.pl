% H324: One bag contains 4 red balls and 2 blue balls ; another bag contains 3 red balls and 5 blue balls.  One ball is drawn from each bag, determine the probability that one is red and one is blue. ## Solution= 13/24

group(1-2).

group(1-13).

given(exactly(2, 1-2, blue)).
given(exactly(5, 1-13, blue)).
given(exactly(4, 1-2, red)).
given(exactly(3, 1-13, red)).

take(1-13, 2-17, 1).
take(1-2, 2-13, 1).

union(2-2, [2-13, 2-17]).
probability(and(exactly(1, 2-2, red), exactly(1, 2-2, blue))).

property(color, [blue, red]).

