% H505:  Two cards are drawn in succession from a deck without replacement.  The deck consists of 52 cards where there are 4 of each value, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 and 13.  What is the probability that both cards are greater than 2 and less than 9? ## Solution= 46/221

group(1-9).
size(1-9, 52).

given(exactly(4, 1-9, 10)).
given(exactly(4, 1-9, 7)).
given(exactly(4, 1-9, 11)).
given(exactly(4, 1-9, 4)).
given(exactly(4, 1-9, 5)).
given(exactly(4, 1-9, 8)).
given(exactly(4, 1-9, 2)).
given(exactly(4, 1-9, 9)).
given(exactly(4, 1-9, 3)).
given(exactly(4, 1-9, 1)).
given(exactly(4, 1-9, 12)).
given(exactly(4, 1-9, 13)).
given(exactly(4, 1-9, 6)).

take(1-9, 1-2, 2).

probability(all(1-2, or(3, or(4, or(5, or(6, or(7,8))))))).

property(value, [11, 10, 13, 12, 1, 3, 2, 5, 4, 7, 6, 9, 8]).
