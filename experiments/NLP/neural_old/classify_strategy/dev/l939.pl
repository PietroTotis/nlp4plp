% L939: Three balls are drawn one after the other from a bag containing 6 red balls, 5 yellow balls and 3 green balls.  What is the probability that all three balls are yellow if the ball is replaced after each draw and the contents are well mixed? ## Solution= 0.0455539358600583

group(1-11).

given(exactly(3, 1-11, green)).
given(exactly(6, 1-11, red)).
given(exactly(5, 1-11, yellow)).

take_wr(1-11, 1-2, 3).

probability(all(1-2, yellow)).

property(property, [green, yellow, red]).

