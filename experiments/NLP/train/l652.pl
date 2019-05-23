% L652: A box contains 3 glazed doughnuts, 4 jelly doughnuts, and 5 chocolate doughnuts.  If a person selects a doughnut at random, find the probability that it is either a glazed doughnut or a chocolate doughnut. ## Solution= 2/3

group(1-2).

given(exactly(5, 1-2, chocolate)).
given(exactly(3, 1-2, glazed)).
given(exactly(4, 1-2, jelly)).

take(1-2, 2-6, 1).

probability(all(2-6, or(glazed, chocolate))).

property(property, [glazed, jelly, chocolate]).

