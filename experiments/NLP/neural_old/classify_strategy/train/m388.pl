% M388: A pair of dice with six sides labeled 1, 2, 3, 4, 5 and 6 is rolled.  What is the probability that the product of the two numbers rolled is greater than or equal to 20? ## Solution= 0.222222222222222

group(1-4).
size(1-4, 6).

given(exactly(1, 1-4, 2)).
given(exactly(1, 1-4, 1)).
given(exactly(1, 1-4, 6)).
given(exactly(1, 1-4, 4)).
given(exactly(1, 1-4, 5)).
given(exactly(1, 1-4, 3)).

take_wr(1-4, 1-21, 2).


probability(aggcmp(1-21,outcome(0),product,>=,20)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

