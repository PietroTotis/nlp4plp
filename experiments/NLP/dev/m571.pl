% M571: A jar contains 40 yellow, 15 violet, and 6 green balls.  A ball is drawn at random.  What is the probability that the ball is violet or yellow? ## Solution= 55/61

group(1-2).

given(exactly(15, 1-2, violet)).
given(exactly(6, 1-2, green)).
given(exactly(40, 1-2, yellow)).

take(1-2, 2-2, 1).

probability(all(2-2, or(violet, yellow))).

property(colour, [green, yellow, violet]).

