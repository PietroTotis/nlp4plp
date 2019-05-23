% L283: In the ancient Indian game of Tong, two players simultaneously show their right hands to each other, exhibiting either one or two or three extended fingers.  If each player is equally likely to extend one, two or three fingers, what is the probability that the total number of fingers extended is even? ## Solution= 5/9

group(1-28).
size(1-28, 3).

given(exactly(1, 1-28, 1)).
given(exactly(1, 1-28, 2)).
given(exactly(1, 1-28, 3)).

take_wr(1-28, 1-12, 2).


probability(aggcmp(1-12,outcome(0),sum,is_even)).

property(outcome(0), [1, 3, 2]).

