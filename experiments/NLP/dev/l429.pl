% L429: In a shipment of 100 televisions, 6 are defective.  If a person buys two televisions from that shipment, what is the probability that both are defective? ## Solution= 1/330

group(1-3).
size(1-3, 100).

given(exactly(6, 1-3, defective)).

take(1-3, 2-6, 2).

probability(all(2-6, defective)).

property(property, [defective]).

