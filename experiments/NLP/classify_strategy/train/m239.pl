% M239: A basket contains 7 red apples and 5 green apples.  An apple is taken at random from the basket and then replaced.  Another apple is taken from the basket.  What is the probability that at least one green apple is picked? ## Solution= 0.659722222222222

group(1-2).

given(exactly(5, 1-2, green)).
given(exactly(7, 1-2, red)).

take_wr(1-2, 2-2, 2).

probability(atleast(1, 2-2, green)).

property(colour, [green, red]).

