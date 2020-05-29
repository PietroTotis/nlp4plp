% L119: A number is chosen at random from the set of two-digit numbers from 10 to 99 inclusive.  What is the probability the number contains at least one digit 2? ## Solution= 1/5

group(1-12).
size(1-12, 90).

given(exactly(18, 1-12, 2)).

take(1-12, 1-2, 1).

probability(all(1-2, 2)).

property(property, [2]).

