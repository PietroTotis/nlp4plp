% M436: A purse contains four $ 5 bills, five $ 10 bills and three $ 20 bills.  Two bills are selected without the first selection being replaced.  What is the probability of selecting $ 5, and then $ 5? ## Solution= 1/11

group(1-2).

given(exactly(4, 1-2, 5)).
given(exactly(5, 1-2, 10)).
given(exactly(3, 1-2, 20)).

take(1-2, 2-2, 2).

probability(and(nth(1, 2-2, 5), nth(2, 2-2, 5))).

property(bill_value, [20, 5, 10]).

