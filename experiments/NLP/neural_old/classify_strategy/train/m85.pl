% M85: In the word HOME there are two vowels.  If two letters are taken at random from the word HOME, what is the probability that none of the letters would be vowels? ## Solution= 1/6

group(1-3).
size(1-3, 4).

given(exactly(2, 1-3, vowel)).

take(1-3, 2-3, 2).

probability(none(2-3, vowel)).

property(kind_of_letter, [vowel]).

