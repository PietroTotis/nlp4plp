% L424: A box contain 4 red balls, 5 green balls and 6 white balls.  A ball is drawn at random from the box.  What is the probability that the ball drawn is either red or green? ## Solution= 3/5

group(1-2).

given(exactly(6, 1-2, white)).
given(exactly(5, 1-2, green)).
given(exactly(4, 1-2, red)).

take(1-2, 2-2, 1).

probability(all(2-2, or(red, green))).

property(property, [white, green, red]).

