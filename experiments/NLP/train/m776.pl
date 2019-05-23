% M776: A car lot has ten cars, three of which are red.  If two cars are sold on a particular day, what is the probability that they are both red? ## Solution= 1/15

group(1-6).
size(1-6, 10).

given(exactly(3, 1-6, red)).

take(1-6, 2-3, 2).

probability(all(2-3, red)).

property(colour, [red]).

