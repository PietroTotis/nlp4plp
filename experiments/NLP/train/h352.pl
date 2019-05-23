% H352: Sal has three quarters, three nickels and three pennies.  If Sal selects three coins at random and without replacement, what is the probability that he total value is exactly 35 cents? ## Solution= 3/28

group(coins).

given(exactly(3, coins, 0.05)).
given(exactly(3, coins, 0.25)).
given(exactly(3, coins, 0.01)).

take(coins, 2-5, 3).

probability(aggcmp(2-5,value,sum,=:=,0.35)).

property(value, [0.25, 0.01, 0.05]).

