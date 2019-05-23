% L694: A circuit to run a model railroad has 8 switches.  Two are defective.  If a person selects 2 switches at random and tests them, find the probability that the second one is defective, given that the first one is defective. ## Solution= 1/7

group(1-2).
size(1-2, 8).

given(exactly(2, 1-2, defective)).

take(1-2, 3-6, 2).
observe(nth(1, 3-6, defective)).

probability(nth(2, 3-6, defective)).

property(property, [defective]).

