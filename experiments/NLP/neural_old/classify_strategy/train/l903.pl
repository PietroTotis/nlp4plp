% L903: In Hannah 's purse there are three 1p coins, five 10p coins and eight 2p coins.  She takes a coin at random from her purse.  What is the probability of a 1p coin or 10p coin? ## Solution= 0.5

group(1-4).

given(exactly(5, 1-4, p10)).
given(exactly(8, 1-4, p2)).
given(exactly(3, 1-4, p1)).

take(1-4, 2-4, 1).

probability(all(2-4, or(p1, p10))).

property(property, [p2, p10, p1]).

