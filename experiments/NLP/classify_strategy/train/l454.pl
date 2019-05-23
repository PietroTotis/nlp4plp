% L454: When rolling a number cube with the numbers 1, 2, 3, 4, 5 and 6 on it, what is the probability of not landing on an odd number? ## Solution= 1/2

group(1-5).
size(1-5, 6).

given(exactly(1, 1-5, 2)).
given(exactly(1, 1-5, 1)).
given(exactly(1, 1-5, 6)).
given(exactly(1, 1-5, 4)).
given(exactly(1, 1-5, 5)).
given(exactly(1, 1-5, 3)).

take_wr(1-5, 1-2, 1).


probability(aggcmp(1-2,outcome(0),sum,is_even)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

