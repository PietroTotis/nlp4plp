% M855: One percent of young children in Canada are allergic to peanuts.  What is the probability that in a kindergarten class of 20 kids, at least one would have a peanut allergy? ## Solution= 0.18209306

group(1-5).

given(exactly(rel(1/100, 1-5), 1-5, peanuts)).

take(1-5, 2-12, 20).

probability(some(2-12, peanuts)).

property(allergy, [peanuts]).

