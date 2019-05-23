% H832: Mr. Smith has 12 shirts, eight pairs of slacks, eight ties, and four jackets.  Suppose that four shirts, three pairs of slacks, two ties, and two jackets are blue.  What is the probability that an all-blue outfit is the result of a random selection? ## Solution= 1/64

group(clothes).

given(exactly(2, clothes, and(blue, jacket))).
given(exactly(3, clothes, and(blue, slacks))).
given(exactly(2, clothes, and(blue, tie))).
given(exactly(12, clothes, shirt)).
given(exactly(4, clothes, jacket)).
given(exactly(4, clothes, and(blue, shirt))).
given(exactly(8, clothes, tie)).
given(exactly(8, clothes, slacks)).

take(clothes, 3-15, 4).
observe(exactly(1, 3-15, shirt)).
observe(exactly(1, 3-15, slacks)).
observe(exactly(1, 3-15, tie)).
observe(exactly(1, 3-15, jacket)).

probability(all(3-15, blue)).

property(color, [blue]).
property(property, [jacket, tie, shirt, slacks]).

