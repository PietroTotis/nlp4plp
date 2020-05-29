% M8: A bag contains 2 red balls, 3 green balls and 2 blue balls.  Two balls are drawn at random.  What is the probability that none of the balls drawn is blue? ## Solution= 10/21

group(1-2).

given(exactly(2, 1-2, blue)).
given(exactly(3, 1-2, green)).
given(exactly(2, 1-2, red)).

take(1-2, 2-2, 2).

probability(none(2-2, blue)).

property(color, [blue, green, red]).

