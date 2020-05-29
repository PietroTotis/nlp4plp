% L186: An experiment consists of tossing a pair of dice, each with 6 sides labeled 1, 2, 3, 4, 5, and 6.  Find the probability that the sum of the numbers appearing on the dice is equal to 7. ## Solution= 6/36

group(1-9).
size(1-9, 6).

given(exactly(1, 1-9, 2)).
given(exactly(1, 1-9, 1)).
given(exactly(1, 1-9, 6)).
given(exactly(1, 1-9, 4)).
given(exactly(1, 1-9, 5)).
given(exactly(1, 1-9, 3)).

take_wr(1-9, 1-5, 2).


probability(aggcmp(1-5,outcome(0),sum,=:=,7)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

