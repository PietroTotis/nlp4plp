% L392: If we randomly pick two television sets in succession from a shipment of 240 television sets of which 15 are defective, what is the probability that they will both be defective? ## Solution= 7/1912

group(1-12).
size(1-12, 240).

given(exactly(15, 1-12, defective)).

take(1-12, 1-7, 2).

probability(all(1-7, defective)).

property(property, [defective]).

