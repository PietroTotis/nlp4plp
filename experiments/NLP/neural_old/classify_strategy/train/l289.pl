% L289: Two balls are drawn with replacement from an urn containing five white and three black balls.  Find the probability that both balls will be white. ## Solution= 5/14

group(1-9).

given(exactly(5, 1-9, white)).
given(exactly(3, 1-9, black)).

take(1-9, 1-2, 2).

probability(all(1-2, white)).

property(property, [white, black]).

