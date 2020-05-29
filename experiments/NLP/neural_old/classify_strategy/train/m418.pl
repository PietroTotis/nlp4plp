% M418: You are dealt three cards from a standard deck of 52 cards.  A standard deck contains 13 heart, 13 club, 13 spade and 13 diamond cards.  What is the probability that exactly two cards are from the same suit? ## Solution= 12/51 * 39/50 * 3

group(1-9).
size(1-9, 52).

given(exactly(13, 1-9, heart)).
given(exactly(13, 1-9, spade)).
given(exactly(13, 1-9, diamond)).
given(exactly(13, 1-9, club)).

take(1-9, 1-5, 3).

probability(or(exactly(2, 1-5, heart), or(exactly(2, 1-5, club), or(exactly(2, 1-5, spade), exactly(2, 1-5, diamond))))).

property(suit, [club, heart, diamond, spade]).

