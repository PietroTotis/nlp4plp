% M240: A basket contains 7 red apples and 5 green apples.  An apple is taken at random from the basket and then replaced.  Another apple is taken from the basket.  What is the probability that exactly one green apple is picked? ## Solution= 0.486111111111111

group(1-2).

given(exactly(5, 1-2, green)).
given(exactly(7, 1-2, red)).

take_wr(1-2, 2-2, 2).

probability(exactly(1, 2-2, green)).

property(colour, [green, red]).

