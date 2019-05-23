% H819: A lot of 50 spacing washers contains 30 washers that are thicker than the target dimension.  Suppose that three washers are selected at random, without replacement, from the lot.  What is the probability that all three washers are thicker than the target? ## Solution= 0.20714286

group(1-6).
size(1-6, 50).

given(exactly(30, 1-6, thicker)).

take(1-6, 2-4, 3).

probability(all(2-4, thicker)).

property(property, [thicker]).

