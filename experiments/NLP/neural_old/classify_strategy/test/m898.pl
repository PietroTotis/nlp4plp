% M898: A box contains 20 balls: 10 are yellow, 6 are red and 4 are grey.  What is the probability of picking a yellow and then a red ball without replacing the first one? ## Solution= 0.157894736842105

group(1-2).
size(1-2, 20).

group(rest(2-8)).

given(exactly(10, 1-2, yellow)).
given(exactly(6, 1-2, red)).
given(exactly(4, 1-2, grey)).

take(1-2, 2-8, 1).
take(rest(2-8), 2-13, 1).

probability(and(all(2-8, yellow), all(2-13, red))).

property(colour, [grey, yellow, red]).

