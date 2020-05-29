% M917: A box contains 22 red bows, 19 pink bows and 11 saffron bows.  What is the probability of drawing a red bow first and then a saffron bow with replacement? ## Solution= 0.089497041

group(1-2).

given(exactly(19, 1-2, pink)).
given(exactly(22, 1-2, red)).
given(exactly(11, 1-2, saffron)).

take_wr(1-2, 2-9, 2).

probability(and(nth(1, 2-9, red), nth(2, 2-9, saffron))).

property(colour, [pink, red, saffron]).

