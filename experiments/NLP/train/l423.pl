% L423: A box contain 10 black and 10 white balls.  What is the probability of drawing two balls of the same colour? ## Solution= 9/19

group(1-2).

given(exactly(10, 1-2, white)).
given(exactly(10, 1-2, black)).

take(1-2, 2-8, 2).

probability(all_same(2-8,colour)).

property(colour, [white, black]).

