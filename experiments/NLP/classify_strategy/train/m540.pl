% M540: A girl chooses an item at random from a bakery that has 5 pastries and 6 patties.  What is the probability that the girls chooses an item that is not a pastry? ## Solution= 6/11

group(1-10).

given(exactly(6, 1-10, patty)).
given(exactly(5, 1-10, pastry)).

take(1-10, 1-5, 1).

probability(none(1-5, pastry)).

property(dessert, [pastry, patty]).

