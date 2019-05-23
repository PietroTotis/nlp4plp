% L492: You and two of your friends are in a group of 10 people.  The group is randomly split up into two groups of 5 people each.  Determine the probability that you and your two friends are in the same group. ## Solution= 1/6

group(1-10).
size(1-10, 10).

given(exactly(3, 1-10, friend)).

take(1-10, 2-9, 5).

probability(or(exactly(3, 2-9, friend), all(2-9, not(friend)))).

property(property, [friend]).

