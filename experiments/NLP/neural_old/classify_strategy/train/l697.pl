% L697: In a pizza restaurant, 95 percent of the customers order pizza.  If 65 percent of the customers order pizza and a salad, find the probability that a customer who orders pizza will also order a salad. ## Solution= 13/19

group(1-10).

given(exactly(rel(95/100, 1-10), 1-10, pizza)).
given(exactly(rel(65/100, 1-10), 1-10, and(pizza, salad))).

take(1-10, 2-15, 1).
observe(all(2-15, pizza)).

probability(all(2-15, salad)).

property(salad, [salad]).
property(pizza, [pizza]).

