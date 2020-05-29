% L314: Five letters are selected at random one after another from the 26 letters of the English alphabet with replacement.  5 of the letters of the English alphabet are vowels and 21 of the letters are consonants.  Find the probability that the word formed consists of vowels. ## Solution= 0.000263016674162993

group(1-13).
size(1-13, 26).

given(exactly(21, 1-13, consonant)).
given(exactly(5, 1-13, vowel)).

take_wr(1-13, 1-2, 5).

probability(all(1-2, vowel)).

property(property, [consonant, vowel]).

