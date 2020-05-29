% M79: A bag contains 6 white and 4 black balls.  2 balls are drawn at random.  What is the probability that they are of same colour? ## Solution= 7/15

group(1-2).

given(exactly(6, 1-2, white)).
given(exactly(4, 1-2, black)).

take(1-2, 2-2, 2).

probability(all_same(2-2,colour)).

property(colour, [white, black]).

