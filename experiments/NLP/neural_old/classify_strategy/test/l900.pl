% L900:  There are three urns with marbles in them.  In the first urn there are 4 red marbles, 3 green marbles, and one pink ball.  In the second urn there are 7 orange marbles, 3 blue marbles and 2 pink marbles.  In the third urn there are 4 green marbles, 4 red marbles, 3 brown marbles, and 2 pink marbles.  What is the probability of getting exactly two pink marbles if you pick two marbles out of each urn? ## Solution= 0.18016706

group(bagA).
group(bagB).
group(bagC).

given(exactly(4, bagA, red)).
given(exactly(3, bagA, green)).
given(exactly(1, bagA, pink)).

given(exactly(7, bagB, orange)).
given(exactly(3, bagB, blue)).
given(exactly(2, bagB, pink)).

given(exactly(4, bagC, green)).
given(exactly(4, bagC, red)).
given(exactly(3, bagC, brown)).
given(exactly(2, bagC, pink)).

take(bagA, a, 2).
take(bagB, b, 2).
take(bagC, c, 2).

union(abc, [a,b,c]).
probability(exactly(2, abc, pink)).

property(color, [red, green, pink, orange, blue, brown]).