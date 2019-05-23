% L917: In a game there are 70 people in which 40 are boys and 30 are girls.  One from the total group is selected as a leader at random.  What is the probability that the person, chosen as the leader is a boy? ## Solution= 4/7

group(1-7).
size(1-7, 70).

given(exactly(40, 1-7, boy)).
given(exactly(30, 1-7, girl)).

take(1-7, 2-1, 1).

probability(all(2-1, boy)).

property(property, [boy, girl]).

