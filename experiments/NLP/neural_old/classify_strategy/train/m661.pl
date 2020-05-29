% M661: Two marbles are drawn randomly, without replacement, from a bag containing two green, three yellow, and four red marbles.  Find the probability of drawing none of the yellow marbles. ## Solution= 0.416666666666667

group(1-12).

given(exactly(2, 1-12, green)).
given(exactly(3, 1-12, yellow)).
given(exactly(4, 1-12, red)).

take(1-12, 1-2, 2).

probability(none(1-2, yellow)).

property(colour, [green, red, yellow]).

