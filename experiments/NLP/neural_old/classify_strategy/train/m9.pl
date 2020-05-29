% M9: In a box, there are 8 red balls, 7 blue balls and 6 green balls.  One ball is picked up randomly.  What is the probability that it is neither red nor green? ## Solution= 1/3

group(1-3).

given(exactly(7, 1-3, blue)).
given(exactly(8, 1-3, red)).
given(exactly(6, 1-3, green)).

take(1-3, 2-2, 1).

probability(all(2-2, and(not(red), not(green)))).

property(color, [blue, green, red]).

