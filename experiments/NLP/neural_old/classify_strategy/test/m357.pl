% M357: A card is drawn from a deck of 52 cards, where there are 4 of each value, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 and 13.  What is the probability of drawing a number more than 5? ## Solution= 8/13

group(1-18).
size(1-18, 13).

given(exactly(1, 1-18, 9)).
given(exactly(1, 1-18, 2)).
given(exactly(1, 1-18, 13)).
given(exactly(1, 1-18, 1)).
given(exactly(1, 1-18, 6)).
given(exactly(1, 1-18, 4)).
given(exactly(1, 1-18, 7)).
given(exactly(1, 1-18, 12)).
given(exactly(1, 1-18, 5)).
given(exactly(1, 1-18, 10)).
given(exactly(1, 1-18, 3)).
given(exactly(1, 1-18, 11)).
given(exactly(1, 1-18, 8)).

take_wr(1-18, 1-4, 1).


probability(aggcmp(1-4,outcome(0),sum,>,5)).

property(outcome(0), [11, 10, 13, 12, 1, 3, 2, 5, 4, 7, 6, 9, 8]).

