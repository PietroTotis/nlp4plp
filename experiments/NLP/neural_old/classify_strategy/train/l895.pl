% L895: A new health restaurant is being opened that randomly chooses 9 healthy items of food from 10 different vegetables and 15 different fruits to make a smoothie out of.  What is the probability that at least 6 of the healthy food items are vegetables? ## Solution= 0.053272801

group(1-15).

given(exactly(15, 1-15, fruit)).
given(exactly(10, 1-15, vegetable)).

take(1-15, 1-13, 9).

probability(atleast(6, 1-13, vegetable)).

property(property, [vegetable, fruit]).

