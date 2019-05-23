% L102: Two cards are chosen at random without replacement from a pack of 52 playing cards.  There are 4 aces in the pack of cards.  If the first card chosen is an Ace, what is the probability the second card chosen is also an Ace? ## Solution= 1/17

group(rest(3-4)).

group(1-11).
size(1-11, 52).

given(exactly(4, 1-11, ace)).

take(1-11, 3-4, 1).
observe(all(3-4, ace)).
take(rest(3-4), 3-16, 1).

probability(all(3-16, ace)).

property(property, [ace]).

