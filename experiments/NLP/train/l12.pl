% L12: A jar contains 3 red marbles, 7 green marbles and 10 white marbles.  If a marble is drawn from the jar at random, what is the probability that this marble is white? ## Solution= 1/2

group(1-2).

given(exactly(10, 1-2, white)).
given(exactly(7, 1-2, green)).
given(exactly(3, 1-2, red)).

take(1-2, 2-3, 1).

probability(all(2-3, white)).

property(color, [white, green, red]).

