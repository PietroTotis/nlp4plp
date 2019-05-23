% L760: Thee digits are randomly selected without replacement from two 2s, three 6s and one 9.  What is the probability that the sum of the three digits is a multiple of 2? ## Solution= 1/2

group(digits).

given(exactly(2, digits, 2)).
given(exactly(1, digits, 9)).
given(exactly(3, digits, 6)).

take(digits, 1-2, 3).

probability(aggcmp(1-2,digit,sum,is_even)).

property(digit, [9, 2, 6]).

