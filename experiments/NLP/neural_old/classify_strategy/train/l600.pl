% L600: From a group of 3 freshmen, 4 sophomores, 4 juniors, and 3 seniors a committee of size 4 is randomly selected.  Find the probability that the committee will consist of 1 from each class. ## Solution= 0.14385614

group(1-3).

given(exactly(4, 1-3, sophomore)).
given(exactly(3, 1-3, freshman)).
given(exactly(4, 1-3, junior)).
given(exactly(3, 1-3, senior)).

take(1-3, 1-18, 4).

probability(and(exactly(1, 1-18, freshman), and(exactly(1, 1-18, sophomore), and(exactly(1, 1-18, junior), exactly(1, 1-18, senior))))).

property(property, [freshman, senior, junior, sophomore]).

