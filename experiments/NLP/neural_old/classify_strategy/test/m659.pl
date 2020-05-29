% M659: Two marbles are drawn randomly, without replacement, from a bag containing two green, three yellow, and four red marbles.  Find the probability of drawing exactly one red marble. ## Solution= 0.555555555555556

group(1-12).

given(exactly(2, 1-12, green)).
given(exactly(3, 1-12, yellow)).
given(exactly(4, 1-12, red)).

take(1-12, 1-2, 2).

probability(exactly(1, 1-2, red)).

property(colour, [green, yellow, red]).

