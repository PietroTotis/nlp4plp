% L856: A purse contains two 5-cent coins, three 10-cent coins, four 20-coins and one 50-cent coin.  A coin is chosen at random from this purse.  Find the probability that the value of the coin is 10 cents or 20 cents. ## Solution= 0.7

group(1-2).

given(exactly(2, 1-2, 5-cent)).
given(exactly(3, 1-2, 10-cent)).
given(exactly(4, 1-2, 20-coin)).
given(exactly(1, 1-2, 50-cent)).

take(1-2, 2-2, 1).

probability(all(2-2, or(10-cent, 20-coin))).

property(property, [10-cent, 5-cent, 20-coin, 50-cent]).

