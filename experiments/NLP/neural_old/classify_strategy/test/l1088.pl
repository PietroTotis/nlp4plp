% L1088: Find the probabilities of randomly drawing two kings in succession from an ordinary deck of 52 playing cards, containing 4 kings, if we sample withreplacement. ## Solution= 1/169

group(1-14).
size(1-14, 52).

given(exactly(4, 1-14, king)).

take_wr(1-14, 1-7, 2).

probability(all(1-7, king)).

property(property, [king]).

