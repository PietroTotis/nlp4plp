% M890: A box contains 7 balls numbered 1, 2, 3, 4, 5, 6 and 7.  If a ball is taken at random from the box, find the probability that it is an even-numbered ball. ## Solution= 3/7

group(2-3).
size(2-3, 7).

given(exactly(1, 2-3, 2)).
given(exactly(1, 2-3, 1)).
given(exactly(1, 2-3, 6)).
given(exactly(1, 2-3, 4)).
given(exactly(1, 2-3, 7)).
given(exactly(1, 2-3, 5)).
given(exactly(1, 2-3, 3)).

take_wr(2-3, 2-5, 1).


probability(aggcmp(2-5,outcome(0),sum,is_even)).

property(outcome(0), [1, 3, 2, 5, 4, 7, 6]).

