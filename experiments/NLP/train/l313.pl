% L313: Five letters are selected at random one after another from the 26 letters of the English alphabet with replacement.  The first letter of the alphabet is the a. Find the probability that the word formed contains an a. ## Solution= 1-(25/26)^5

group(1-13).
size(1-13, 26).

given(exactly(1, 1-13, a)).

take_wr(1-13, 1-2, 5).

probability(some(1-2, a)).

property(property, [a]).

