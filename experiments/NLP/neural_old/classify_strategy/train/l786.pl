% L786: A team of 5 players is to be selected from a group of 6 boys and 8 girls.  If the selection is made randomly, find the probability that there are 2 boys and 3 girls in the team. ## Solution= 60/143

group(1-12).

given(exactly(8, 1-12, girl)).
given(exactly(6, 1-12, boy)).

take(1-12, 1-2, 5).

probability(and(exactly(2, 1-2, boy), exactly(3, 1-2, girl))).

property(property, [boy, girl]).

