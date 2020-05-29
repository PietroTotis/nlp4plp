% L964: Suppose cards numbered 1, 2, 3, 4, 5, 6, 7, 8, 9 and 10 are placed in a hat, mixed up, and then one of the cards is drawn.  If we are told that the number on the drawn card is at least five, then what is the conditional probability that it is ten? ## Solution= 1/6

group(1-37).
size(1-37, 10).

given(exactly(1, 1-37, 9)).
given(exactly(1, 1-37, 2)).
given(exactly(1, 1-37, 1)).
given(exactly(1, 1-37, 6)).
given(exactly(1, 1-37, 4)).
given(exactly(1, 1-37, 7)).
given(exactly(1, 1-37, 5)).
given(exactly(1, 1-37, 10)).
given(exactly(1, 1-37, 3)).
given(exactly(1, 1-37, 8)).

take_wr(1-37, 1-39, 1).
observe(aggcmp(1-39,outcome(0),sum,>=,5)).


probability(all(1-39, 10)).

property(outcome(0), [10, 1, 3, 2, 5, 4, 7, 6, 9, 8]).

