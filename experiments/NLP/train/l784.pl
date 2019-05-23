% L784: In a group of 10 outstanding students in a school, there are 6 boys and 4 girls.  Three students are to be selected out of these at random for a debate competition.  Find the probability that one is boy and two are girls. ## Solution= 3/10

group(1-3).
size(1-3, 10).

given(exactly(6, 1-3, boy)).
given(exactly(4, 1-3, girl)).

take(1-3, 2-2, 3).

probability(and(exactly(1, 2-2, boy), exactly(2, 2-2, girl))).

property(property, [boy, girl]).

