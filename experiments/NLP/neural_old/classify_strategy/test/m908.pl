% M908: A jar contains 18 brown belts, 12 black belts and 15 white belts.  What is the probability of drawing a brown belt first and then a black belt with replacement? ## Solution= 0.10666666666

group(1-2).

given(exactly(15, 1-2, white)).
given(exactly(18, 1-2, brown)).
given(exactly(12, 1-2, black)).

take_wr(1-2, 2-9, 2).

probability(and(nth(1, 2-9, brown), nth(2, 2-9, black))).

property(colour, [brown, white, black]).

