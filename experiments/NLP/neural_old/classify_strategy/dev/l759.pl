% L759:  Bag A contains four yellow marbles, two green marbles and three blue marbles.  Bag B contains four blue marbles and four green marbles.  If Anthony choose one marble from each bag, what is the probability that he will select one blue marble and one yellow marble? ## Solution= 2/9


group(bagA).

group(bagB).

given(exactly(4, bagA, yellow)).
given(exactly(2, bagA, green)).
given(exactly(3, bagA, blue)).

given(exactly(4, bagB, blue)).
given(exactly(4, bagB, green)).

take(bagA, a, 1).
take(bagB, b, 1).

union(ab, [a,b]).
probability(and(exactly(1, ab, blue), exactly(1, ab, yellow))).

property(color, [yellow, green, blue]).