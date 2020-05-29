% L960: A bag contains 6 red balls, 5 yellow balls and 3 green balls.  A ball is drawn at random.  What is the probability that the ball is not yellow? ## Solution= 0.642857142857143

group(1-2).

given(exactly(3, 1-2, green)).
given(exactly(6, 1-2, red)).
given(exactly(5, 1-2, yellow)).

take(1-2, 2-2, 1).

probability(none(2-2, yellow)).

property(property, [green, red, yellow]).

