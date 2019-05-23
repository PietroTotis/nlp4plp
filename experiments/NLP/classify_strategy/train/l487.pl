% L487: You choose at random two cards from a standard deck of 52 cards.  The deck contains 13 hearts and 4 tens from which only one is a heart.  What is the probability of getting a ten and hearts? ## Solution= 29/442

group(1-10).
size(1-10, 52).

given(exactly(4, 1-10, ten)).
given(exactly(13, 1-10, heart)).
given(exactly(1, 1-10, and(heart, ten))).

take(1-10, 1-6, 2).

probability(and(atleast(1, 1-6, ten), atleast(1, 1-6, heart))).

property(number, [ten]).
property(suit, [heart]).

