% M41: Three cards are pulled from a deck of 52 cards.  In a deck there are 13 clubs.  What is the probability of obtaining at least one club? ## Solution= 0.586470588235294

group(1-7).
size(1-7, 52).

given(exactly(13, 1-7, club)).

take(1-7, 1-2, 3).

probability(atleast(1, 1-2, club)).

property(suit, [club]).

