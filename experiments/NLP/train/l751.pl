% L751: A pinochle deck of cards consists of 48 cards: eight aces, eight kings, eight queens, eight jacks, eight tens, and eight nines.  Suppose you are cutting cards from a pinochle deck.  What is the probability that you draw a king on the first card? ## Solution= 1/6

group(1-3).

given(exactly(8, 1-3, queens)).
given(exactly(8, 1-3, jacks)).
given(exactly(8, 1-3, ace)).
given(exactly(8, 1-3, ten)).
given(exactly(8, 1-3, nine)).
given(exactly(8, 1-3, king)).

take(1-3, 3-13, 1).

probability(all(3-13, king)).

property(property, [king, jacks, ten, ace, nine, queens]).

