% L921: A bag contains 12 white and 18 black balls.  Two balls are drawn in succession without replacement.  What is the probability that first is white and second is black? ## Solution= 36/145

group(1-2).

given(exactly(12, 1-2, white)).
given(exactly(18, 1-2, black)).

take(1-2, 2-2, 2).

probability(and(nth(1, 2-2, white), nth(2, 2-2, black))).

property(property, [white, black]).

