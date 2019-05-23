% M913: A bottle contains 15 red shirts, 10 green shirts and 20 white shirts.  What is the probability of drawing a green shirt first and then a white shirt with replacement? ## Solution= 0.098765432

group(1-2).

given(exactly(20, 1-2, white)).
given(exactly(10, 1-2, green)).
given(exactly(15, 1-2, red)).

take_wr(1-2, 2-9, 2).

probability(and(nth(1, 2-9, green), nth(2, 2-9, white))).

property(colour, [white, green, red]).

