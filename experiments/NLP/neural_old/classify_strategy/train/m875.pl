% M875: A bag contains 8 green balls and 12 yellow balls.  What is the probability of picking a green ball? ## Solution= 8/20

group(1-2).

given(exactly(8, 1-2, green)).
given(exactly(12, 1-2, yellow)).

take(1-2, 2-9, 1).

probability(all(2-9, green)).

property(colour, [green, yellow]).

