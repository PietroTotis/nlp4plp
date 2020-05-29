% L267: Using a standard deck of 52 playing cards with 4 kings, find the probability of drawing a king, replacing it, then drawing a second king. ## Solution= 1/169

group(1-4).
size(1-4, 52).

given(exactly(4, 1-4, king)).

take_wr(1-4, 1-17, 2).

probability(all(1-17, king)).

property(property, [king]).

