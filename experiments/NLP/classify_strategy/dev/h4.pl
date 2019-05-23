% H4: One throws a die two times and multiplies the number of dots of the first throw by the number of dots of the second throw.  Where the die has 6 sides, with 1, 2, 3, 4, 5, and 6 dots respectively.  Find the probability that the result is an odd number. ## Solution= 1/4

group(1-4).
size(1-4, 6).

given(exactly(1, 1-4, 2)).
given(exactly(1, 1-4, 1)).
given(exactly(1, 1-4, 6)).
given(exactly(1, 1-4, 4)).
given(exactly(1, 1-4, 5)).
given(exactly(1, 1-4, 3)).

take_wr(1-4, 1-2, 2).


probability(aggcmp(1-2,outcome(0),product,is_odd)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

