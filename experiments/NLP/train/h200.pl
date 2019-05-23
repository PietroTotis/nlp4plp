% H200: What is the probability of choosing a marble that is not blue from a jar containing 5 red, 6 green and 4 blue marbles? ## Solution= 11/15

group(1-15).

given(exactly(5, 1-15, red)).
given(exactly(4, 1-15, blue)).
given(exactly(6, 1-15, green)).

take(1-15, 1-8, 1).

probability(none(1-8, blue)).

property(property, [blue, green, red]).

