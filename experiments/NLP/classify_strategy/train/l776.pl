% L776: Find the probability of getting both red balls, when from a bag containing 5 red and 4 black balls, two balls are drawn, without replacement. ## Solution= 5/18

group(1-13).

given(exactly(4, 1-13, black)).
given(exactly(5, 1-13, red)).

take(1-13, 1-23, 2).

probability(all(1-23, red)).

property(property, [black, red]).

