% M574: A jar contains 35 yellow, 12 violet, and 6 green balls.  A ball is drawn at random.  What is the probability that the ball is violet or yellow? ## Solution= 47/53

group(1-2).

given(exactly(12, 1-2, violet)).
given(exactly(6, 1-2, green)).
given(exactly(35, 1-2, yellow)).

take(1-2, 2-2, 1).

probability(all(2-2, or(yellow, violet))).

property(colour, [green, yellow, violet]).

