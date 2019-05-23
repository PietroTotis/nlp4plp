% M249: There are 20 counters in a box.  Nine are yellow, 4 are black and 7 are green.  What 's the probability that a counter which is taken from the box without looking will be green? ## Solution= 7/20

group(1-7).
size(1-7, 20).

given(exactly(7, 1-7, green)).
given(exactly(4, 1-7, black)).
given(exactly(9, 1-7, yellow)).

take(1-7, 3-7, 1).

probability(all(3-7, green)).

property(colour, [black, green, yellow]).

