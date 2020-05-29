% H88: From a deck of five cards numbered 2, 4, 6, 8, and 10, respectively, a card is drawn at random and replaced.  This is done three times.  What is the probability that the card numbered 2 was drawn exactly two times, given that the sum of the numbers on the three draws is 12? ## Solution= 3/10

group(1-3).

given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 8)).
given(exactly(1, 1-3, 10)).

take_wr(1-3, 2-5, 3).
observe(aggcmp(2-5,number,sum,=:=,12)).

probability(exactly(2, 2-5, 2)).

property(number, [8, 6, 2, 4, 10]).

