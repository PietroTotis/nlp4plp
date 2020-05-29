% L785: In a group of 10 outstanding students in a school, there are 6 boys and 4 girls.  Three students are to be selected out of these at random for a debate competition.  Find the probability that all are boys. ## Solution= 1/6

group(1-3).
size(1-3, 10).

given(exactly(6, 1-3, boy)).
given(exactly(4, 1-3, girl)).

take(1-3, 2-2, 3).

probability(all(2-2, boy)).

property(property, [boy, girl]).

