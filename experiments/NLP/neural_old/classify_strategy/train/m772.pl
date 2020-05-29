% M772: A shipment of 6 computer chips contains 2 defective chips.  Three chips are chosen at random and without replacement.  Find the probability of choosing 3 good chips. ## Solution= 0.2

group(1-2).
size(1-2, 6).

given(exactly(2, 1-2, defective)).

take(1-2, 2-2, 3).

probability(none(2-2, defective)).

property(property, [defective]).

