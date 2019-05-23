% M494: From a deck of five cards numbered 2, 4, 6, 8, and 10, respectively, a card is drawn at random and replaced.  This is done three times.  What is the probability that the card numbered 2 was drawn exactly two times, given that the sum of the numbers on the three draws is 12? ## Solution= 0.3

group(1-22).
size(1-22, 5).

given(exactly(1, 1-22, 4)).
given(exactly(1, 1-22, 2)).
given(exactly(1, 1-22, 10)).
given(exactly(1, 1-22, 8)).
given(exactly(1, 1-22, 6)).

take_wr(1-22, 1-24, 3).
observe(aggcmp(1-24,outcome(0),sum,=:=,12)).


probability(exactly(2, 1-24, 2)).

property(outcome(0), [8, 2, 4, 10, 6]).

