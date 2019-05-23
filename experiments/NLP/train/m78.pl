% M78: On a randomly selected city block, the probability of 1 person living in a home is 0.25, the probability of 2 people living in a home is 0.5 and the probability of 3 people living in a home is 0.15.  What is the probability that 4 or more adults reside at a randomly selected home? ## Solution= 0.1

group(1-6).
size(1-6, 1).

given(exactly(rel(0.5, 1-6), 1-6, 2)).
given(exactly(rel(0.25, 1-6), 1-6, 1)).
given(exactly(rel(0.15, 1-6), 1-6, 3)).

take(1-6, 2-4, 1).

probability(all(2-4, and(not(1), and(not(2), not(3))))).

property(people_living, [1, 3, 2]).

