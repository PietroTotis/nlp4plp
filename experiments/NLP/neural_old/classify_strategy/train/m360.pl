% M360: There are four green blocks and four red blocks in a bag.  Two blocks are selected at random.  What is the probability that they are both red? ## Solution= 0.214285714285714

group(1-12).

given(exactly(4, 1-12, green)).
given(exactly(4, 1-12, red)).

take(1-12, 2-2, 2).

probability(all(2-2, red)).

property(colour, [green, red]).

