% L562: From a box containing 6 black balls and 4 green balls, 3 balls are drawn in succession, each ball being replaced in the box before the next draw is made.  What is the probability that all 3 are the same color? ## Solution= 7/25

group(1-3).

given(exactly(4, 1-3, green)).
given(exactly(6, 1-3, black)).

take_wr(1-3, 1-14, 3).

probability(all_same(1-14,colour)).

property(colour, [black, green]).

