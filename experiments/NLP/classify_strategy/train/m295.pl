% M295: A bucket contains 3 bottles of apple juice, 2 bottles of orange juice, 6 bottles of tomato juice, and 8 bottles of water.  If Kira randomly selects a bottle, what is the probability that she will select a drink other than water? ## Solution= 11/19

group(1-2).

given(exactly(8, 1-2, water)).
given(exactly(2, 1-2, orange)).
given(exactly(6, 1-2, tomato)).
given(exactly(3, 1-2, apple)).

take(1-2, 2-6, 1).

probability(none(2-6, water)).

property(drink, [orange, water, tomato, apple]).

