% L14: A jar contains 100 marbles, identical except that 30 are red, 20 black, 5 green and the rest white.  If a marble is taken from the jar at random, what is the probability that the marble is red? ## Solution= 3/10

group(1-2).
size(1-2, 100).

given(exactly(5, 1-2, green)).
given(exactly(45, 1-2, white)).
given(exactly(20, 1-2, black)).
given(exactly(30, 1-2, red)).

take(1-2, 2-3, 1).

probability(all(2-3, red)).

property(color, [green, white, black, red]).

