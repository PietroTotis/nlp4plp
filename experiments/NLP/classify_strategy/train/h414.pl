% H414: Two cards are drawn from a pack of well shuffled cards, in which 4 are Kings and 4 are Queens, simultaneously.  What is the probability that one card is a King and one is a Queen. ## Solution= (4*4*2)/(52*51)

group(1-7).
size(1-7, 52).

given(exactly(4, 1-7, queen)).
given(exactly(4, 1-7, king)).

take(1-7, 1-2, 2).

probability(and(exactly(1, 1-2, king), exactly(1, 1-2, queen))).

property(property, [king, queen]).

