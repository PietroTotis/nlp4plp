% M80: A word consists of 9 letters ; 5 consonants and 4 vowels.  Three letters are chosen at random.  What is the probability that more than one vowel will be selected? ## Solution= 17/42

group(1-2).
size(1-2, 9).

given(exactly(5, 1-2, consonant)).
given(exactly(4, 1-2, vowel)).

take(1-2, 2-2, 3).

probability(more_than(1, 2-2, vowel)).

property(property, [consonant, vowel]).

