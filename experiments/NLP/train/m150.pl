% M150: A bag contains 2 red marbles, 3 green marbles, and 4 blue marbles.  If we choose a marble, then another marble without putting the first one back in the bag, what is the probability that the first marble will be green and the second will be red? ## Solution= 1/12

group(1-2).

given(exactly(4, 1-2, blue)).
given(exactly(3, 1-2, green)).
given(exactly(2, 1-2, red)).

take(1-2, 2-5, 2).

probability(and(nth(1, 2-5, green), nth(2, 2-5, red))).

property(colour, [blue, green, red]).

