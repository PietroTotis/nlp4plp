% L101: Two cards are chosen at random without replacement from a pack of 52 playing cards.  The pack contains 4 Aces and 4 Kings.  If the first card chosen is an Ace, what is the probability the second card chosen is a King? ## Solution= 4/51

group(1-11).
size(1-11, 52).

group(rest(3-4)).

given(exactly(4, 1-11, king)).
given(exactly(4, 1-11, ace)).

take(1-11, 3-4, 1).
observe(all(3-4, ace)).
take(rest(3-4), 3-16, 1).

probability(all(3-16, king)).

property(property, [king, ace]).

