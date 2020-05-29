% L112: The letters of the alphabet are written on 26 cards.  Two cards are chosen at random.  There are 21 consonants in the alphabet.  What is the probability that at least one of them is a consonant? ## Solution= 63/65

group(1-10).
size(1-10, 26).

given(exactly(21, 1-10, consonant)).

take(1-10, 2-2, 2).

probability(atleast(1, 2-2, consonant)).

property(property, [consonant]).

