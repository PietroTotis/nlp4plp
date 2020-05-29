% M109: Zhi Qing decides to pick one card at random from a standard deck of 52 cards.  A standard deck of 52 cards contains 4 seven and 4 three.  What is the probability that the card Zhi Qing chooses is either a three or a seven? ## Solution= 2/13

group(1-16).
size(1-16, 52).

given(exactly(4, 1-16, seven)).
given(exactly(4, 1-16, three)).

take(1-16, 1-7, 1).

probability(all(1-7, or(three, seven))).

property(property, [seven, three]).

