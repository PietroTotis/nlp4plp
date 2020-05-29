% L173: A factory buys 1000 light bulbs of type A, and 500 bulbs of type B, which are somewhat more expensive.  For a randomly chosen bulb of type A there is the probability 0.6 of that it lasts longer than 2 months.  For a randomly chosen bulb of type B we have the probability 0.9 that it lasts longer than 2 months.  By mistake all bulbs are mixed together.  A bulb is chosen at random from the 1500 bulbs.  Find the probability that this bulb will last for longer than 2 months. ## Solution= 0.7

group(5-10).
size(5-10, 1500).

given(exactly(rel(0.6, 5-10, a), 5-10, and(a, month))).
given(exactly(500, 5-10, b)).
given(exactly(1000, 5-10, a)).
given(exactly(rel(0.9, 5-10, b), 5-10, and(b, month))).

take(5-10, 5-2, 1).

probability(all(5-2, month)).

property(months, [month]).
property(type, [a, b]).

