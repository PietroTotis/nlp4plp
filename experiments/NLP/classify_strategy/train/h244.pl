% H244: A shipment of 50 precision parts including 4 that are defective is sent to an assembly plant.  The quality control division selects 10 at random for testing and rejects the entire shipment if 1 or more are found defective.  What is the probability this shipment passes inspection? ## Solution= 0.396830221450282

group(1-6).
size(1-6, 50).

given(exactly(4, 1-6, defective)).

take(1-6, 2-6, 10).

probability(not(atleast(1, 2-6, defective))).

property(property, [defective]).

