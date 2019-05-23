% L705: In a large vase, there are 8 roses, 5 daisies, 12 lilies, and 9 orchids.  If 4 flowers are selected at random, find the probability that at least one of the flowers is a rose. ## Solution= 0.677635

group(1-4).

given(exactly(5, 1-4, daisy)).
given(exactly(8, 1-4, rose)).
given(exactly(12, 1-4, lily)).
given(exactly(9, 1-4, orchid)).

take(1-4, 2-3, 4).

probability(atleast(1, 2-3, rose)).

property(property, [rose, daisy, lily, orchid]).

