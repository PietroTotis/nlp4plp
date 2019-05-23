% H123: A bag contains 5 blue sticks, 4 red sticks, and 3 orange sticks and you ask a friend to pick one without looking.  What is the probability that the stick will be blue? ## Solution= 5/12

group(1-2).

given(exactly(3, 1-2, orange)).
given(exactly(5, 1-2, blue)).
given(exactly(4, 1-2, red)).

take(1-2, 1-23, 1).

probability(all(1-23, blue)).

property(property, [blue, orange, red]).

