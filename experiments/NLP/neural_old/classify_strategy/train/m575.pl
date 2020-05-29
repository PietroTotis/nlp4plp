% M575: A jar contains 25 blue, 10 violet, and 5 green balls.  A ball is drawn at random.  What is the probability that the ball is green or blue? ## Solution= 3/4

group(1-2).

given(exactly(25, 1-2, blue)).
given(exactly(10, 1-2, violet)).
given(exactly(5, 1-2, green)).

take(1-2, 2-2, 1).

probability(all(2-2, or(green, blue))).

property(colour, [blue, green, violet]).

