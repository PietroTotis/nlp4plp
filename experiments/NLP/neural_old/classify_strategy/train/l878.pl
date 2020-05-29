% L878: The English alphabet contains 21 consonants and 5 vowels.  What is the probability of having a license plate, 3 letters and 4 numbers, with either all vowels OR consonants? ## Solution= 0.5340236686

group(1-3).

given(exactly(5, 1-3, vowel)).
given(exactly(21, 1-3, consonant)).

take_wr(1-3, 2-12, 3).

probability(or(all(2-12, vowel), all(2-12, consonant))).

property(property, [consonant, vowel]).

