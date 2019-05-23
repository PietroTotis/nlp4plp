% H199: What is the probability of choosing a green marble from a jar containing 5 red, 6 green and 4 blue marbles? ## Solution= 6/15

group(1-12).

given(exactly(6, 1-12, green)).
given(exactly(5, 1-12, red)).
given(exactly(4, 1-12, blue)).

take(1-12, 1-9, 1).

probability(all(1-9, green)).

property(property, [blue, green, red]).

