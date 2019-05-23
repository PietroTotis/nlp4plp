% L607: Three cards are randomly selected, without replacement, from an ordinary deck of 52 playing cards.  The deck contains 13 spades.  Compute the conditional probability that the first card selected is a spade given that the second and third cards are spades. ## Solution= 0.22

group(1-13).
size(1-13, 52).

given(exactly(13, 1-13, spade)).

take(1-13, 1-2, 3).
observe(and(nth(2, 1-2, spade), nth(3, 1-2, spade))).

probability(nth(1, 1-2, spade)).

property(property, [spade]).

