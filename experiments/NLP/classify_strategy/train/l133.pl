% L133: A bag contains 3 white balls, 4 green balls and 5 red balls.  Three balls are drawn from the bag without replacement.  Find the probability that the balls are all of different colors. ## Solution= 3/11

group(1-2).

given(exactly(3, 1-2, white)).
given(exactly(4, 1-2, green)).
given(exactly(5, 1-2, red)).

take(1-2, 2-2, 3).

probability(all_diff(2-2,color)).

property(color, [white, green, red]).

