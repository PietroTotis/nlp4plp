% M380: A homeroom has 7 boys and 5 girls.  The homeroom randomly selects two representatives to student council.  What is the probability that the homeroom elects one boy and one girl? ## Solution= 0.53030303030303

group(1-2).

given(exactly(5, 1-2, girl)).
given(exactly(7, 1-2, boy)).

take(1-2, 2-6, 2).

probability(and(exactly(1, 2-6, boy), exactly(1, 2-6, girl))).

property(sex, [boy, girl]).

