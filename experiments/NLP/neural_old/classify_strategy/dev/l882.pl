% L882: What is the probability of drawing a red or blue marble out of a bowl with 10 red, 6 blue, 9 green? ## Solution= 0.64

group(1-15).

given(exactly(10, 1-15, red)).
given(exactly(6, 1-15, blue)).
given(exactly(9, 1-15, green)).

take(1-15, 1-11, 1).

probability(all(1-11, or(red, blue))).

property(property, [blue, green, red]).

