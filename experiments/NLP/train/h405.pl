% H405: A card is drawn from an ordinary deck containing 12 face cards, 4 Kings, 4 Queens and 4 Jacks.  What is the probability that it is a king, given that it is a face card? ## Solution= 1/3

group(1-8).
size(1-8, 52).

given(exactly(4, 1-8, jacks)).
given(exactly(4, 1-8, queens)).
given(exactly(4, 1-8, kings)).

take(1-8, 1-2, 1).
observe(all(1-2, or(jacks, or(queens, kings)))).

probability(all(1-2, kings)).

property(value, [kings, jacks, queens]).

