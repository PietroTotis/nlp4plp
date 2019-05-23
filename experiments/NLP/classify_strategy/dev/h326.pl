% H326: Four cards are drawn from a pack of 52 cards.  Where there are 4 of each of the following cards, ace, 2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, and king.  Determine the probability that they are ace, king, queen, and jack. ## Solution= 256/270725

group(1-10).
size(1-10, 52).

given(exactly(4, 1-10, 8)).
given(exactly(4, 1-10, 5)).
given(exactly(4, 1-10, 6)).
given(exactly(4, 1-10, jack)).
given(exactly(4, 1-10, 7)).
given(exactly(4, 1-10, 10)).
given(exactly(4, 1-10, queen)).
given(exactly(4, 1-10, 4)).
given(exactly(4, 1-10, king)).
given(exactly(4, 1-10, ace)).
given(exactly(4, 1-10, 3)).
given(exactly(4, 1-10, 9)).
given(exactly(4, 1-10, 2)).

take(1-10, 1-2, 4).

probability(and(exactly(1, 1-2, ace), and(exactly(1, 1-2, king), and(exactly(1, 1-2, queen), exactly(1, 1-2, jack))))).

property(value, [king, ace, 10, queen, 3, 2, 5, jack, 7, 6, 9, 8, 4]).

