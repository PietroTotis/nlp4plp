% M686: A shipment of 12 stereos contains three defective units.  Four of the units are shipped to a retail store.  What is the probability that exactly two units are good? ## Solution= 0.218181818181818

group(1-2).
size(1-2, 12).

given(exactly(3, 1-2, defective)).

take(1-2, 2-1, 4).

probability(exactly(2, 2-1, defective)).

property(property, [defective]).

