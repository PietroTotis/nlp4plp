% L957: A shipment of 17 radios includes 5 radios that are defective.  The receiver samples 6 radios at random.  What is the probability that exactly 3 of the radios selected are defective? ## Solution= 0.17776341

group(1-2).
size(1-2, 17).

given(exactly(5, 1-2, defective)).

take(1-2, 2-5, 6).

probability(exactly(3, 2-5, defective)).

property(property, [defective]).

