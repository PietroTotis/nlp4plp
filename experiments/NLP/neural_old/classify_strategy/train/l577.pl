% L577: Suppose you randomly draw two marbles, without replacement, from a bag containing six green, four red, and three black marbles.  Determine the probability that both marbles are red. ## Solution= 1/13

group(1-13).

given(exactly(3, 1-13, black)).
given(exactly(4, 1-13, red)).
given(exactly(6, 1-13, green)).

take(1-13, 1-6, 2).

probability(all(1-6, red)).

property(property, [black, green, red]).

