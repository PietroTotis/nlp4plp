% L65: Davey sank 12 red, 9 blue, and 14 green diving sticks in the pool.  The water is very cloudy and you ca n't tell the color of the sticks from the surface of the water.  James jumps in to retrieve the diving sticks.  What is the probability that James will find a red stick first? ## Solution= 12/35

group(1-13).

given(exactly(14, 1-13, green)).
given(exactly(9, 1-13, blue)).
given(exactly(12, 1-13, red)).

take(1-13, 4-11, 1).

probability(all(4-11, red)).

property(color, [blue, green, red]).

