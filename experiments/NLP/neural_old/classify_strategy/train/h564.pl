% H564: A bag contains 8 white balls and 12 black balls.  Balls are withdrawn one at a time, the ball being replaced after each draw.  There are 4 drawings.  What is the probability of drawing out all black balls? ## Solution= 81/625

group(1-2).

given(exactly(8, 1-2, white)).
given(exactly(12, 1-2, black)).

take_wr(1-2, 3-4, 4).

probability(all(3-4, black)).

property(property, [white, black]).

