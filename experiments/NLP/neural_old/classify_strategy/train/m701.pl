% M701: A shipment of 2500 microwave ovens contains 20 defective units.  You order three units from the shipment.  What is the probability that all three are good? ## Solution= 0.976182034703393

group(1-2).
size(1-2, 2500).

given(exactly(20, 1-2, defective)).

take(1-2, 2-4, 3).

probability(none(2-4, defective)).

property(property, [defective]).

