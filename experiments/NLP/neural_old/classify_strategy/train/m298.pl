% M298: 8 cards, numbered 1, 2, 3, 4, 5, 6, 7, 8, are placed face down and shuffled.  If Beatrice turns over only one card, what is the probability she will get a card with a number less than 4? ## Solution= 3/8

group(1-2).
size(1-2, 8).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 7)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).
given(exactly(1, 1-2, 8)).

take_wr(1-2, 2-15, 1).


probability(aggcmp(2-15,outcome(0),sum,<,4)).

property(outcome(0), [1, 3, 2, 5, 4, 7, 6, 8]).

