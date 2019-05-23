% M34: A box contains 4 chocobars and 4 ice creams.  Tom eats 3 of them, by randomly choosing.  What is the probability of choosing 2 chocobars and 1 icecream? ## Solution= 0.428571428571429

group(1-2).

given(exactly(4, 1-2, cream)).
given(exactly(4, 1-2, chocobar)).

take(1-2, 2-3, 3).

probability(and(exactly(2, 2-3, chocobar), exactly(1, 2-3, cream))).

property(type, [chocobar, cream]).

