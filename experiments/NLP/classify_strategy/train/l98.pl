% L98:  A code consists of a two digit number chosen from 00 to 99, followed by two different letters of the alphabet.  What is the probability the code is 12 K Y? ## Solution= 1/67600

group(digits).
size(digits, 10).
group(letters).
size(letters, 26).

given(exactly(1, letters, y)).
given(exactly(1, letters, k)).
given(exactly(1, digits, 1)).
given(exactly(1, digits, 2)).

take_wr(digits, code_digits, 2).
take_wr(letters, code_letters, 2).

probability(and(and(nth(1, code_digits, 1), nth(2, code_digits, 2)), and(nth(1, code_letters, k), nth(2, code_letters, y)))).

property(number, [1,2]).
property(letter, [y, k]).