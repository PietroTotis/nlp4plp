% M336: Two cards are drawn from single deck of 52 cards one after the other.  Each deck contains 4 Kings.  What is the probability of selecting a king from the first card? ## Solution= 1/13

group(1-7).
size(1-7, 52).

given(exactly(4, 1-7, king)).

take(1-7, 1-2, 2).

probability(nth(1, 1-2, king)).

property(card_value, [king]).

