% M463: A bag contains 12 identically shaped blocks, 3 of which are red and the remainder are green.  The bag is well shaken and a single block is drawn.  What is the probability that the block is not red? ## Solution= 3/4

group(1-7).
size(1-7, 12).

given(exactly(9, 1-7, green)).
given(exactly(3, 1-7, red)).

take(1-7, 2-9, 1).

probability(none(2-9, red)).

property(colour, [green, red]).

