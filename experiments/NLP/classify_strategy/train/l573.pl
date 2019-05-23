% L573: A bag contains 26 tiles, each marked with a different letter of the alphabet.  What is the probability of being able to spell the word math with four randomly selected tiles that are taken from the bag all at the same time? ## Solution= 1/14950

group(1-2).
size(1-2, 26).

given(exactly(4, 1-2, math)).

take(1-2, 2-17, 4).

probability(all(2-17, math)).

property(property, [math]).

