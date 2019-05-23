% M919: A jar contains 15 pins: 3 are black, 8 are red and 4 are blue.  What is the probability of picking a red and then a blue pin without replacing the first one? ## Solution= 0.1523809524

group(1-2).
size(1-2, 15).

group(rest(2-8)).

given(exactly(4, 1-2, blue)).
given(exactly(3, 1-2, black)).
given(exactly(8, 1-2, red)).

take(1-2, 2-8, 1).
take(rest(2-8), 2-13, 1).

probability(and(all(2-8, red), all(2-13, blue))).

property(colour, [blue, black, red]).

