% L166: Assume that there are 100 lots in a lottery and only one prize.  What is the probability of winning the prize, when one buys two lots? ## Solution= 0.02

group(1-6).
size(1-6, 100).

given(exactly(1, 1-6, prize)).

take(1-6, 2-14, 2).

probability(exactly(1, 2-14, prize)).

property(property, [prize]).

