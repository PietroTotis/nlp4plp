% L268: What is the probability of selecting a yellow or a blue marble from a box of 5 green, 3 yellow and 2 blue marbles? ## Solution= 1/2

group(1-15).

given(exactly(3, 1-15, yellow)).
given(exactly(2, 1-15, blue)).
given(exactly(5, 1-15, green)).

take(1-15, 1-12, 1).

probability(all(1-12, or(yellow, blue))).

property(property, [blue, green, yellow]).

