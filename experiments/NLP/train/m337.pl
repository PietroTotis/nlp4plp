% M337: Two cards are drawn from single deck of 52 cards.  Each deck contains 4 Kings.  If the first card is king and the card is not replaced, what is the probability of selecting a king from the second card? ## Solution= 1/17

group(1-7).
size(1-7, 52).

given(exactly(4, 1-7, king)).

take(1-7, 1-2, 2).
observe(nth(1, 1-2, king)).

probability(nth(2, 1-2, king)).

property(card_value, [king]).

