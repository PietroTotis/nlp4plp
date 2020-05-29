% M54: A five card hand is dealt from a deck of 52 cards.  There are 13 diamonds and 26 black cards.  What is the probability the hand contains 2 diamonds and 3 black cards? ## Solution= 0.07803121248499399

group(1-9).
size(1-9, 52).

given(exactly(13, 1-9, diamond)).
given(exactly(26, 1-9, black)).

take(1-9, 1-4, 5).

probability(and(exactly(2, 1-4, diamond), exactly(3, 1-4, black))).

property(colour, [diamond, black]).

