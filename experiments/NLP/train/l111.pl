% L111: Two cards are chosen at random from a pack of 52 playing cards.  The pack contains 12 picture cards.  What is the probability that at least one of them is a picture card? ## Solution= 7/17

group(1-9).
size(1-9, 52).

given(exactly(12, 1-9, picture)).

take(1-9, 1-2, 2).

probability(atleast(1, 1-2, picture)).

property(property, [picture]).

