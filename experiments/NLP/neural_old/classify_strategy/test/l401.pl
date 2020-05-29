% L401: A box contains four $ 10 bills, six $ 5 bills and two $ 1 bills.  Two bills are taken at random from the box without replacement.  What is the probability that both bills will be of the same denomination? ## Solution= 1/3

group(1-2).

given(exactly(2, 1-2, 1)).
given(exactly(4, 1-2, 10)).
given(exactly(6, 1-2, 5)).

take(1-2, 2-2, 2).

probability(all_same(2-2,value)).

property(value, [1, 10, 5]).

