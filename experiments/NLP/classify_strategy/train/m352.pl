% M352: A card is drawn from a deck of 52.  Each deck contains 13 clubs.  What is the probability of drawing a club? ## Solution= 1/4

group(1-7).
size(1-7, 52).

given(exactly(13, 1-7, club)).

take(1-7, 1-2, 1).

probability(all(1-2, club)).

property(suit, [club]).

