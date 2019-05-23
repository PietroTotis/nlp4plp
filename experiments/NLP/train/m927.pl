% M927: A cooler contains ten bottles of sports drink: four lemon-lime flavored, three orange flavored, and three fruit-punch flavored.  Three times, you randomly grab a bottle, return the bottle to the cooler, and then mix up the bottles.  What is the probability that the first time, you get a lemon-lime drink and the second and third times, you get fruit-punch? ## Solution= 0.036

group(1-2).
size(1-2, 10).

given(exactly(3, 1-2, orange)).
given(exactly(3, 1-2, fruit-punch)).
given(exactly(4, 1-2, lemon-lime)).

take_wr(1-2, 2-8, 3).

probability(and(nth(1, 2-8, lemon-lime), and(nth(2, 2-8, fruit-punch), nth(3, 2-8, fruit-punch)))).

property(flavour, [orange, fruit-punch, lemon-lime]).

