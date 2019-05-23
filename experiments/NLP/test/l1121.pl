% L1121: A pizza parlor offers 12 different toppings, one of which is anchovies.  If a pizza is ordered at random, what is the probability that anchovies is one of the toppings? ## Solution= 0.0833333333333333

group(1-7).
size(1-7, 12).

given(exactly(1, 1-7, anchovie)).

take(1-7, 2-3, 1).

probability(all(2-3, anchovie)).

property(property, [anchovie]).

