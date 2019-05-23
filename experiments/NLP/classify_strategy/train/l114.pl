% L114: Two cards are chosen at random from a pack of 52 playing cards.  There are 13 Hearts.  What is the probability that at least one of them is a Heart? ## Solution= 15/34

group(1-9).
size(1-9, 52).

given(exactly(13, 1-9, heart)).

take(1-9, 1-2, 2).

probability(atleast(1, 1-2, heart)).

property(property, [heart]).

