% H820: A lot of 50 spacing washers contains 30 washers that are thicker than the target dimension.  Suppose that three washers are selected at random, without replacement, from the lot.  What is the probability that the third washer selected is thicker than the target if the first two washers selected are thinner than the target? ## Solution= .625

group(1-6).
size(1-6, 50).

given(exactly(30, 1-6, thicker)).

take(1-6, 2-4, 3).
observe(and(nth(1, 2-4, not(thicker)), nth(2, 2-4, not(thicker)))).

probability(nth(3, 2-4, thicker)).

property(property, [thinner, thicker]).

