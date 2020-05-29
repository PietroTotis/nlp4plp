% M546: There are 10 flowers in a garden and 5 of them are roses.  If a flower is chosen at random, what is the probability that it will not be rose? ## Solution= 0.5

group(1-4).
size(1-4, 10).

given(exactly(5, 1-4, rose)).

take(1-4, 2-3, 1).

probability(none(2-3, rose)).

property(flower, [rose]).

