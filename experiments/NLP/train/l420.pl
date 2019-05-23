% L420: A bag contains 6 black and 8 white balls.  One ball is drawn at random.  What is the probability that the ball drawn is white? ## Solution= 4/7

group(1-2).

given(exactly(8, 1-2, white)).
given(exactly(6, 1-2, black)).

take(1-2, 2-2, 1).

probability(all(2-2, white)).

property(property, [white, black]).

