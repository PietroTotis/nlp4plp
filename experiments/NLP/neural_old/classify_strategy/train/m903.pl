% M903: A bag contains 12 black cards, 14 red cards and 12 green cards.  What is the probability of drawing a black card first and then a red card with replacement? ## Solution= 0.11634349

group(1-2).

given(exactly(12, 1-2, black)).
given(exactly(12, 1-2, green)).
given(exactly(14, 1-2, red)).

take_wr(1-2, 2-9, 2).

probability(and(nth(1, 2-9, black), nth(2, 2-9, red))).

property(colour, [green, black, red]).

