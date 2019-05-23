% M824:  Suppose that five good fuses and two defective ones have been mixed up.  To find the defective fuses, we test them one-by-one, at random and without replacement.  What is the probability that we are lucky and find both of the defective fuses in the first two tests? ## Solution= 1/21

group(fuses).

given(exactly(5, fuses, good)).
given(exactly(2, fuses, bad)).

take(fuses, test, 5).

probability(and(nth(1, test, bad), nth(2, test, bad))).

property(fuse, [good, bad]).