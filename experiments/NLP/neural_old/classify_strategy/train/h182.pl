% H182: A wholesaler supplies products to 10 retail stores, each of which will independently make an order on a given day with chance 0.35.  What is the probability of getting exactly 2 orders? ## Solution= 0.17565295

group(1-17).

given(exactly(rel(.35,1-17), 1-17, order)).

take_wr(1-17, 1-8, 10).


probability(exactly(2, 1-8, order)).

property(outcome(0), [order]).

