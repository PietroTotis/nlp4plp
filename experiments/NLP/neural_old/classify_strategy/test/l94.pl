% L94: The alphabet contains 26 letters and there are 10 digits.  A code consists of a digit followed by a letter of the alphabet.  What is the probability the code is 9 Z? ## Solution= 1/260

group(1-2).
size(1-2, 26).

group(1-10).
size(1-10, 10).

given(exactly(1, 1-2, z)).
given(exactly(1, 1-10, 9)).

take(1-10, 2-6, 1).
take(1-2, 2-10, 1).

probability(and(all(2-6, 9), all(2-10, z))).

property(digit, [9]).
property(letter, [z]).

