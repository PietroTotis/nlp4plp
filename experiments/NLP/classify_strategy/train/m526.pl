% M526: There are 25 stones in a jar and 15 of them are brown.  If a stone is chosen at random, what is the probability that it will not be brown? ## Solution= 2/5

group(1-4).
size(1-4, 25).

given(exactly(15, 1-4, brown)).

take(1-4, 2-3, 1).

probability(none(2-3, brown)).

property(colour, [brown]).

