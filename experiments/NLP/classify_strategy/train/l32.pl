% L32: There are five balls in a bag: 2 red, 2 blue and 1 white.  What is the probability of randomly choosing a red ball? ## Solution= 2/5

group(1-4).
size(1-4, 5).

given(exactly(2, 1-4, red)).
given(exactly(1, 1-4, white)).
given(exactly(2, 1-4, blue)).

take(1-4, 2-10, 1).

probability(all(2-10, red)).

property(color, [blue, white, red]).

