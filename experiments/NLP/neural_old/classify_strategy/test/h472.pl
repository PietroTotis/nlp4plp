% H472: Ten customers come into a store.  If the probability is 0.15 that each customer will buy a television set, what is the probability the store will sell three or more? ## Solution= .1798

group(2-8).

given(exactly(rel(.15,2-8), 2-8, buy)).

take_wr(2-8, 1-6, 10).


probability(atleast(3, 1-6, buy)).

property(outcome(0), [buy]).

