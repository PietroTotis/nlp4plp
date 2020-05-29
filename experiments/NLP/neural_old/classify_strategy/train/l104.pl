% L104: A box contains 5 green pencils and 7 yellow pencils.  Two pencils are chosen at random from the box without replacement.  What is the probability they are different colors? ## Solution= 35/66

group(1-2).

given(exactly(5, 1-2, green)).
given(exactly(7, 1-2, yellow)).

take(1-2, 2-2, 2).

probability(all_diff(2-2,color)).

property(color, [green, yellow]).

