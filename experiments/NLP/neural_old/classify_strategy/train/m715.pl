% M715: A shipment of 1000 radar detectors contains five defective units.  A retail outlet has ordered 50 units.  What is the probability that at least one unit is defective? ## Solution= 0.22662746602608408

group(1-6).
size(1-6, 1000).

given(exactly(5, 1-6, defective)).

take(1-6, 2-7, 50).

probability(atleast(1, 2-7, defective)).

property(property, [defective]).

