% M558: A jar contains 10 blue marbles, 5 red marbles, 4 green marbles, and 1 yellow marble.  Two marbles are chosen without replacement.  What is the probability that one will be green and the other red? ## Solution= 0.105263157894737

group(1-2).

given(exactly(10, 1-2, blue)).
given(exactly(4, 1-2, green)).
given(exactly(5, 1-2, red)).
given(exactly(1, 1-2, yellow)).

take(1-2, 2-2, 2).

probability(and(exactly(1, 2-2, green), exactly(1, 2-2, red))).

property(colour, [blue, green, yellow, red]).

