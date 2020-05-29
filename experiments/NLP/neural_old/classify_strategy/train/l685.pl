% L685: A flashlight has 6 batteries, 2 of which are defective.  If 2 are selected at random without replacement, find the probability that both are defective. ## Solution= 1/15

group(1-5).
size(1-5, 6).

given(exactly(2, 1-5, defective)).

take(1-5, 2-2, 2).

probability(all(2-2, defective)).

property(property, [defective]).

