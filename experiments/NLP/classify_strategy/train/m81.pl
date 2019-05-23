% M81: In a simultaneous throw of pair of dice with six sides, numbered 1, 2, 3, 4, 5 and 6.  What is the probability of getting the total more than 7? ## Solution= 5/12

group(1-8).
size(1-8, 6).

given(exactly(1, 1-8, 2)).
given(exactly(1, 1-8, 1)).
given(exactly(1, 1-8, 6)).
given(exactly(1, 1-8, 4)).
given(exactly(1, 1-8, 5)).
given(exactly(1, 1-8, 3)).

take_wr(1-8, 1-4, 2).


probability(aggcmp(1-4,outcome(0),sum,>,7)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

