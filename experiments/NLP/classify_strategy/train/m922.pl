% M922: A box contains 19 blue bells, 21 red bells and 11 grey bells.  What is the probability of drawing a red bell first and then a grey bell with replacement? ## Solution= 0.088811995

group(1-2).

given(exactly(19, 1-2, blue)).
given(exactly(21, 1-2, red)).
given(exactly(11, 1-2, grey)).

take_wr(1-2, 2-9, 2).

probability(and(nth(1, 2-9, red), nth(2, 2-9, grey))).

property(colour, [blue, grey, red]).

