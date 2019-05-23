% L290: Two balls are drawn with replacement from an urn containing five white and three black balls.  Find the probability that both balls will be the same colour. ## Solution= 13/28

group(1-9).

given(exactly(5, 1-9, white)).
given(exactly(3, 1-9, black)).

take(1-9, 1-2, 2).

probability(all_same(1-2,colour)).

property(colour, [white, black]).

