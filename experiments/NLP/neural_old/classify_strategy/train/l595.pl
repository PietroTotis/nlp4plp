% L595: A group of 6 men and 6 women is randomly divided into 2 groups of size 6 each.  What is the probability that both groups will have the same number of men? ## Solution= 0.4329

group(1-2).

given(exactly(6, 1-2, man)).
given(exactly(6, 1-2, woman)).

take(1-2, 1-14, 6).

probability(exactly(3, 1-14, man)).

property(property, [woman, man]).

