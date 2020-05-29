% M341: A box contains 2 red marbles, 3 white marbles, 4 green marbles and 1 blue marble.  Two marbles are drawn at random without replacement.  What is the probability of selecting a green marble on the second draw if the first marble is blue? ## Solution= 4/9

group(1-2).

given(exactly(1, 1-2, blue)).
given(exactly(3, 1-2, white)).
given(exactly(4, 1-2, green)).
given(exactly(2, 1-2, red)).

take(1-2, 2-2, 2).
observe(nth(1, 2-2, blue)).

probability(nth(2, 2-2, green)).

property(colour, [blue, white, green, red]).

