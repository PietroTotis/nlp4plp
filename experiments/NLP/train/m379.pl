% M379: Lisa shakes her piggy bank until five coins fall out.  Assume nickels and quarters fall out with equal probability.  She knows that there are five nickels and five quarters in her piggy bank.  What is the probability that the sum of the change that has fallen out is $ 0.85? ## Solution= 0.396825396825397

group(1-5).

given(exactly(5, 1-5, 0.05)).
given(exactly(5, 1-5, 0.25)).

take(1-5, 1-8, 5).

probability(aggcmp(1-8,money,sum,=:=,0.85)).

property(money, [0.25, 0.05]).

