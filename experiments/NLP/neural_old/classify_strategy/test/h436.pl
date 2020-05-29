% H436:  We deal from a well-shuffled 52-card deck containing 4 kings.  Calculate the probability that the 13th card is the first king to be dealt. ## Solution= (48*47*46*45*44*43*42*41*40*39*38*37*4)/(52*51*50*49*48*47*46*45*44*43*42*41*40)

group(deck).
size(deck, 52).

given(exactly(4, deck, king)).

take(deck, deal, 13).

probability(and(exactly(1, deal, king), nth(13, deal, king))).

property(cards, [king]).