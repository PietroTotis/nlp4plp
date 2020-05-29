% L777: Six cards are drawn at random from a pack of 52 cards that contains 26 red cards and 26 black cards.  What is the probability that 3 will be red and 3 black? ## Solution= 13000/39151

group(1-9).
size(1-9, 52).

given(exactly(26, 1-9, red)).
given(exactly(26, 1-9, black)).

take(1-9, 1-2, 6).

probability(and(exactly(3, 1-2, red), exactly(3, 1-2, black))).

property(property, [black, red]).

