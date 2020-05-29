% L1113: A bag contains 20 tennis balls, of which four are defective.  If two balls are selected at random from the bag, what is the probability that both are defective? ## Solution= 6/190

group(1-2).
size(1-2, 20).

given(exactly(4, 1-2, defective)).

take(1-2, 2-3, 2).

probability(all(2-3, defective)).

property(property, [defective]).

