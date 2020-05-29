% L782: A bag contains 20 white and 30 black balls.  Find the probability of getting 2 white balls, when two balls are drawn at random without replacement. ## Solution= 0.155102040816327

group(1-2).

given(exactly(20, 1-2, white)).
given(exactly(30, 1-2, black)).

take(1-2, 2-12, 2).

probability(all(2-12, white)).

property(property, [white, black]).

