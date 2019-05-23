% L884: A jar contains 3 red marbles, 7 green marbles and 10 white marbles.  If two marbles are drawn from the jar at random, what is the probability that one marble is white and one is red? ## Solution= 0.157894736842105

group(1-2).

given(exactly(10, 1-2, white)).
given(exactly(7, 1-2, green)).
given(exactly(3, 1-2, red)).

take(1-2, 2-3, 2).

probability(and(exactly(1, 2-3, white), exactly(1, 2-3, red))).

property(property, [white, green, red]).

