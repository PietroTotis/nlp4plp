% H40: On a lottery form one chooses 6 numbers out of 42.  6 numbers are correct.  Find the probability to select exactly 5 correct numbers. ## Solution= 0.00004118

group(1-11).
size(1-11, 42).

given(exactly(6, 1-11, correct)).

take(1-11, 1-4, 6).

probability(exactly(5, 1-4, correct)).

property(property, [correct]).

