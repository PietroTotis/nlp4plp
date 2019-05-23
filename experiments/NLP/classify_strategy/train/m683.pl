% M683: A shipment of 1000 compact disc players contains four defective units.  A retail outlet has ordered 20 units.  What is the probability that all 20 units are good? ## Solution= 0.922254956990949

group(1-2).
size(1-2, 1000).

given(exactly(4, 1-2, defective)).

take(1-2, 2-7, 20).

probability(none(2-7, defective)).

property(property, [defective]).

