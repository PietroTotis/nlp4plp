% L272: A box contains 3 red pencils and 4 yellow pencils.  Three pencils are selected at random.  What is the probability that exactly two red pencils are selected if the second pencil is red? ## Solution= 8/15

group(1-2).

given(exactly(3, 1-2, red)).
given(exactly(4, 1-2, yellow)).

take(1-2, 2-2, 3).
observe(nth(2, 2-2, red)).

probability(exactly(2, 2-2, red)).

property(property, [red, yellow]).

