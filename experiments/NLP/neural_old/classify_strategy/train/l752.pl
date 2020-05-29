% L752: A pinochle deck of cards consists of 48 cards: eight aces, eight kings, eight queens, eight jacks, eight tens, and eight nines.  Suppose you are cutting cards from a pinochle deck.  Suppose you draw a king on the first card and do not return the king to the deck before you draw a second card.  What is the probability of drawing a king? ## Solution= 7/47

group(rest(3-9)).

group(1-3).
size(1-3, 48).

given(exactly(8, 1-3, queens)).
given(exactly(8, 1-3, jacks)).
given(exactly(8, 1-3, ace)).
given(exactly(8, 1-3, ten)).
given(exactly(8, 1-3, nine)).
given(exactly(8, 1-3, king)).

take(rest(3-9), 3-24, 1).
take(1-3, 3-9, 1).
observe(all(3-9, king)).

probability(all(3-24, king)).

property(property, [king, jacks, ten, ace, nine, queens]).

