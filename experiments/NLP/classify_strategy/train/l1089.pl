% L1089: A box of television tubes contains 20 tubes, of which five are defective.  If three of the tubes are selected at random and removed from the box in succession without replacement, what is the probability that all three tubes are defective? ## Solution= 1/114

group(1-2).
size(1-2, 20).

given(exactly(5, 1-2, defective)).

take(1-2, 2-2, 3).

probability(all(2-2, defective)).

property(property, [defective]).

