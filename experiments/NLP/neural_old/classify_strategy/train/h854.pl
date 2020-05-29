% H854: The theaters of a town are showing seven comedies and nine dramas.  Marlon has seen five of the movies.  If the first three movies he has seen are dramas, what is the probability that the last two are comedies?  Assume that Marlon chooses the shows at random and sees each movie at most once. ## Solution= 0.26923077

group(2-7).

given(exactly(9, 2-7, drama)).
given(exactly(7, 2-7, comedy)).

take(2-7, 2-4, 5).
observe(and(and(nth(1, 2-4, drama), nth(2, 2-4, drama)), nth(3, 2-4, drama))).

probability(and(nth(4, 2-4, comedy), nth(5, 2-4, comedy))).

property(property, [drama, comedy]).

