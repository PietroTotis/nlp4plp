% M300: Mr. Gulati is holding five cards numbered 1, 2, 3, 4, 5.  He has asked five students to each randomly pick a card to see who goes first in a game.  Whoever picks the card numbered 5 goes first.  Juanita picks first, gets the card numbered 4, and keeps the card.  What is the probability that Yoko will get the card numbered 5 if she picks second? ## Solution= 0.25

group(rest(4-7)).

group(1-6).
size(1-6, 5).

given(exactly(1, 1-6, 5)).
given(exactly(1, 1-6, 4)).

take(rest(4-7), 5-10, 1).
take(1-6, 4-7, 1).
observe(all(4-7, 4)).

probability(all(5-10, 5)).

property(card_value, [5, 4]).

