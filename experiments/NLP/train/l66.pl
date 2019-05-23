% L66: Davey sank 12 red, 9 blue, and 14 green diving sticks in the pool.  The water is very cloudy and you ca n't tell the color of the sticks from the surface of the water.  James jumps in to retrieve the diving sticks.  What is the chance that he will retrieve a blue stick on his first dive and a green one on his second dive? ## Solution= 9/85

group(rest(4-11)).

group(1-13).

given(exactly(14, 1-13, green)).
given(exactly(9, 1-13, blue)).
given(exactly(12, 1-13, red)).

take(1-13, 4-11, 1).
take(rest(4-11), 4-19, 1).

probability(and(all(4-11, blue), all(4-19, green))).

property(color, [blue, green, red]).

