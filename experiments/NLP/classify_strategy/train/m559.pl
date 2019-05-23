% M559: A jar contains 10 blue marbles, 5 red marbles, 4 green marbles, and 1 yellow marble.  Two marbles are chosen without replacement.  What is the probability that one will be blue and the other yellow? ## Solution= 0.0526315789473684

group(1-2).

given(exactly(10, 1-2, blue)).
given(exactly(4, 1-2, green)).
given(exactly(5, 1-2, red)).
given(exactly(1, 1-2, yellow)).

take(1-2, 2-2, 2).

probability(and(exactly(1, 2-2, blue), exactly(1, 2-2, yellow))).

property(colour, [blue, green, yellow, red]).

