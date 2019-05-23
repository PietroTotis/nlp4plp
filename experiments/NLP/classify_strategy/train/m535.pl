% M535: You roll four dice with 6 sides numbered 1, 2, 3, 4, 5, 6.  What is the probability that the sum is not 5? ## Solution= 0.996913580246914

group(1-4).
size(1-4, 6).

given(exactly(1, 1-4, 2)).
given(exactly(1, 1-4, 1)).
given(exactly(1, 1-4, 6)).
given(exactly(1, 1-4, 4)).
given(exactly(1, 1-4, 5)).
given(exactly(1, 1-4, 3)).

take_wr(1-4, 1-2, 4).


probability(aggcmp(1-2,outcome(0),sum,=\=,5)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

