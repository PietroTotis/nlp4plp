% L537: Suppose that we have a fuse box containing 20 fuses, of which 5 are defective.  If 2 fuses are selected at random and removed from the box in succession without replacing the first, what is the probability that both fuses are defective? ## Solution= 1/19

group(1-7).
size(1-7, 20).

given(exactly(5, 1-7, defective)).

take(1-7, 2-3, 2).

probability(all(2-3, defective)).

property(property, [defective]).

