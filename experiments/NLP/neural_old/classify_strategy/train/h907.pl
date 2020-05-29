% H907: A box contains 20 parts, of which 5 are defective.  Two parts are drawn at random from the box.  What is the probability that both are defective? ## Solution= 0.052631579

group(1-2).
size(1-2, 20).

given(exactly(5, 1-2, defective)).

take(1-2, 2-2, 2).

probability(all(2-2, defective)).

property(property, [defective]).

