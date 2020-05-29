% M415: What is the probability of being dealt a face card then a spade from a standard deck of 52 cards?  In a standard deck, there are 13 spades, of which 3 are face cards, and 12 face cards in total. ## Solution= 0.0576923076923077

group(1-17).
size(1-17, 52).

given(exactly(12, 1-17, face)).
given(exactly(13, 1-17, spade)).
given(exactly(3, 1-17, and(face, spade))).

take(1-17, 1-10, 2).

probability(and(nth(1, 1-10, face), nth(2, 1-10, spade))).

property(type, [face]).
property(suit, [spade]).

