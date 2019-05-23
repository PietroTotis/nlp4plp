% L689: In a scientific study there are 8 guinea pigs, 5 of which are pregnant.  If 3 are selected at random without replacement, find the probability that all are pregnant. ## Solution= 5/28

group(1-9).
size(1-9, 8).

given(exactly(5, 1-9, pregnant)).

take(1-9, 2-2, 3).

probability(all(2-2, pregnant)).

property(property, [pregnant]).

