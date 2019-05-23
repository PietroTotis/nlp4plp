% M338: Two cards are drawn from single deck of 52 cards.  A deck contains 4 Kings and 4 Queens.  What is the probability of selecting a king from the first card and a queen from the second card without replacing the first card? ## Solution= 4/663

group(1-7).
size(1-7, 52).

given(exactly(4, 1-7, queen)).
given(exactly(4, 1-7, king)).

take(1-7, 1-2, 2).

probability(and(nth(1, 1-2, king), nth(2, 1-2, queen))).

property(card_value, [king, queen]).

