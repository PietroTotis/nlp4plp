% H111: There are 10 balls in a bag, 6 red and 4 green.  If 3 are picked out at random, what is the probability of 1 red and 2 greens? ## Solution= 3/10

group(1-7).
size(1-7, 10).

given(exactly(4, 1-7, green)).
given(exactly(6, 1-7, red)).

take(1-7, 2-2, 3).

probability(and(exactly(1, 2-2, red), exactly(2, 2-2, green))).

property(property, [green, red]).

