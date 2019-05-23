% L433: There are 10 items in a box, out of which 3 are defective.  2 balls are taken one after the other.  What is the probability that both of them are defective? ## Solution= 1/15

group(1-4).
size(1-4, 10).

given(exactly(3, 1-4, defective)).

take(1-4, 2-2, 2).

probability(all(2-2, defective)).

property(property, [defective]).

