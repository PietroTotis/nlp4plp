% H430: Two cards are simultaneously drawn randomly from a well shuffled pack of cards of which 26 are red which includes 2 Kings, as well as 2 black Kings.  What is the probability that at least one of the card drawn is a Red card and also at least one of the card drawn is a King? ## Solution= 149/1326

group(1-11).
size(1-11, 52).

given(exactly(2, 1-11, and(king, red))).
given(exactly(26, 1-11, red)).
given(exactly(2, 1-11, and(black, king))).

take(1-11, 1-2, 2).

probability(and(atleast(1, 1-2, red), atleast(1, 1-2, king))).

property(color, [black, red]).
property(value, [king]).

