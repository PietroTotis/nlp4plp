% M910: A box contains 42 erasers: 12 are red, 18 are green and 12 are black.  What is the probability of picking a green and then a black eraser without replacing the first one? ## Solution= 0.125435540069686

group(1-2).
size(1-2, 42).

group(rest(2-8)).

given(exactly(18, 1-2, green)).
given(exactly(12, 1-2, black)).
given(exactly(12, 1-2, red)).

take(1-2, 2-8, 1).
take(rest(2-8), 2-13, 1).

probability(and(all(2-8, green), all(2-13, black))).

property(colour, [green, black, red]).

