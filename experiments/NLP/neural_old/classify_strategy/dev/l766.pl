% L766: In an urn are 5 blue, 3 red, and 2 yellow marbles.  If you draw 3 marbles, what is the probability that less than 2 will be red if you draw with replacement? ## Solution= 0.784

group(1-3).

given(exactly(2, 1-3, yellow)).
given(exactly(3, 1-3, red)).
given(exactly(5, 1-3, blue)).

take_wr(1-3, 2-5, 3).

probability(less_than(2, 2-5, red)).

property(property, [blue, yellow, red]).

