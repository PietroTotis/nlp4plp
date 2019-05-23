% M152: A jar contains 4 red marbles, 4 green marbles, and 5 blue marbles.  If we choose a marble, then another marble without putting the first one back in the jar, what is the probability that the first marble will be blue and the second will be green? ## Solution= 5/39

group(1-2).

given(exactly(5, 1-2, blue)).
given(exactly(4, 1-2, green)).
given(exactly(4, 1-2, red)).

take(1-2, 2-5, 2).

probability(and(nth(1, 2-5, blue), nth(2, 2-5, green))).

property(colour, [blue, green, red]).

