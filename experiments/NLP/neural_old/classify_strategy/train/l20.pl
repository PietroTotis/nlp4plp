% L20: A letter is randomly selected from the English alphabet.  The alphabet contains 26 letters from which 5 are vowels.  What are the odds it is a vowel? ## Solution= 5/26

group(1-9).
size(1-9, 26).

given(exactly(5, 1-9, vowel)).

take(1-9, 3-8, 1).

probability(all(3-8, vowel)).

property(type, [vowel]).

