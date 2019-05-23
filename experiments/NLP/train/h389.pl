% H389: You have two quarters, three dimes and four nickels in your pocket.  You reach into your pocket and randomly select three coins.  What is the probability that their value is exactly 25 cents? ## Solution= 1/7

group(1-13).

given(exactly(2, 1-13, 0.25)).
given(exactly(4, 1-13, 0.05)).
given(exactly(3, 1-13, 0.10)).

take(1-13, 2-10, 3).

probability(aggcmp(2-10,value,sum,=:=,0.25)).

property(value, [0.25, 0.10, 0.05]).

