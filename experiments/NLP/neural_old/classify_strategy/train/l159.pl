% L159: A deck of cards contains 52 cards.  The deck contains 4 aces.  Playing bridge with 4 players, North has no ace.  Find the probability that South has precisely 2 aces. ## Solution= 0.3082

group(rest(3-7)).

group(1-2).
size(1-2, 52).

given(exactly(4, 1-2, ace)).

take(1-2, 3-7, 13).
observe(none(3-7, ace)).
take(rest(3-7), 4-5, 13).

probability(exactly(2, 4-5, ace)).

property(property, [ace]).

