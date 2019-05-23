% L940: Three balls are drawn one after the other from a bag containing 6 red balls, 5 yellow balls and 3 green balls.  What is the probability that all three balls are yellow if the ball is not replaced after each draw? ## Solution= 0.0274725274725275

group(1-11).

given(exactly(3, 1-11, green)).
given(exactly(6, 1-11, red)).
given(exactly(5, 1-11, yellow)).

take(1-11, 1-2, 3).

probability(all(1-2, yellow)).

property(color, [green, yellow, red]).

