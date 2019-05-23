% M889: A single fair die with six sides, labeled 1, 2, 3, 4, 5 and 6, is rolled.  Find the probability of obtaining a number greater than or equal to 4. ## Solution= 1/2

group(1-4).
size(1-4, 6).

given(exactly(1, 1-4, 2)).
given(exactly(1, 1-4, 1)).
given(exactly(1, 1-4, 6)).
given(exactly(1, 1-4, 4)).
given(exactly(1, 1-4, 5)).
given(exactly(1, 1-4, 3)).

take_wr(1-4, 1-23, 1).


probability(aggcmp(1-23,outcome(0),sum,>=,4)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

