% H475: In a shipment of 20,000 items, 400 are defective.  These are scattered randomly throughout the entire lot.  Assume the probability of a defective is the same on each choice.  What is the probability that two or more will appear in a random sample of 35? ## Solution= .1547

group(1-6).
size(1-6, 20000).

given(exactly(400, 1-6, defective)).

take_wr(1-6, 4-16, 35).

probability(atleast(2, 4-16, defective)).

property(property, [defective]).

