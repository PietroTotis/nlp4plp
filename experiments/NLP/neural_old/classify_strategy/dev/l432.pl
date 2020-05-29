% L432: In a shipment of 20 computers, 3 are defective.  Three computers are randomly selected and tested.  What is the probability that all three are defective if the first and second ones are not replaced after being tested? ## Solution= 1/1140

group(1-3).
size(1-3, 20).

given(exactly(3, 1-3, defective)).

take(1-3, 2-2, 3).

probability(all(2-2, defective)).

property(property, [defective]).

