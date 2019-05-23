% L528: The English alphabet contains 26 letters, from which 5 are vowels.  If a letter is chosen at random from the English alphabet, find the probability that the letter is a vowel. ## Solution= 5/26

group(1-3).
size(1-3, 26).

given(exactly(5, 1-3, vowel)).

take(1-3, 2-3, 1).

probability(all(2-3, vowel)).

property(property, [vowel]).

