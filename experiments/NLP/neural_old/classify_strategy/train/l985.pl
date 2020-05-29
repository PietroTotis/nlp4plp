% L985: You randomly select two cards from a standard 52-card deck, which includes 12 face cards.  What is the probability that the first card is not a face card and the second card is a face card if you replace the first card before selecting the second? ## Solution= 30/169

group(1-10).
size(1-10, 52).

given(exactly(12, 1-10, face)).

take_wr(1-10, 1-5, 2).

probability(and(nth(1, 1-5, not(face)), nth(2, 1-5, face))).

property(property, [face]).

