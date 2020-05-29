% M687: A shipment of 12 stereos contains three defective units.  Four of the units are shipped to a retail store.  What is the probability that at least two units are good? ## Solution= 0.981818181818182

group(1-2).
size(1-2, 12).

given(exactly(3, 1-2, defective)).

take(1-2, 2-1, 4).

probability(atmost(2, 2-1, defective)).

property(properties, [defective]).

