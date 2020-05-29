% L806: Find the chance of drawing 2 white balls in succession from a bag containing 5 red and 7 white balls, the balls drawn not being replaced. ## Solution= 7/22

group(1-13).

given(exactly(7, 1-13, white)).
given(exactly(5, 1-13, red)).

take(1-13, 1-8, 2).

probability(all(1-8, white)).

property(property, [white, red]).

