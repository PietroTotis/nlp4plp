% L118: A card is chosen at random from a pack of 52 playing cards.  There are 4 Kings and 13 Hearts.  What is the probability of a King or a Heart? ## Solution= 4/13

group(1-13).
size(1-13, 52).

given(exactly(13, 1-13, heart)).
given(exactly(1, 1-13, and(heart, king))).
given(exactly(4, 1-13, king)).

take(1-13, 1-2, 1).

probability(all(1-2, or(king, heart))).

property(number, [king]).
property(sign, [heart]).

