% L851: A bag contains 1 pink, 1 purple and 1 orange ball.  What is the probability of randomly selecting a purple ball? ## Solution= 0.33333333

group(1-2).

given(exactly(1, 1-2, purple)).
given(exactly(1, 1-2, pink)).
given(exactly(1, 1-2, orange)).

take(1-2, 2-10, 1).

probability(all(2-10, purple)).

property(property, [purple, orange, pink]).

