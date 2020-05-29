% L872: The numbers 1, 2, 3, 4, 5, 6 and 7 are written on cards, the cards are shuffled and one is selected at random.  What is the probability that it is a number less than 4? ## Solution= 3/7

group(1-22).
size(1-22, 7).

given(exactly(1, 1-22, 2)).
given(exactly(1, 1-22, 1)).
given(exactly(1, 1-22, 6)).
given(exactly(1, 1-22, 4)).
given(exactly(1, 1-22, 7)).
given(exactly(1, 1-22, 5)).
given(exactly(1, 1-22, 3)).

take_wr(1-22, 1-28, 1).


probability(aggcmp(1-28,outcome(0),sum,<,4)).

property(outcome(0), [1, 3, 2, 5, 4, 7, 6]).

