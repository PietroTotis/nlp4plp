% L879: What is the probability of randomly selecting a bill from a wallet and getting a $ 20 bill out of a wallet with 2 tens, 3 fives, 4 twenties, and 7 ones? ## Solution= 0.25

group(1-22).

given(exactly(3, 1-22, 5)).
given(exactly(2, 1-22, 10)).
given(exactly(7, 1-22, 1)).
given(exactly(4, 1-22, 20)).

take(1-22, 1-9, 1).

probability(all(1-9, 20)).

property(property, [1, 10, 5, 20]).

