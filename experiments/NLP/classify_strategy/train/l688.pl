% L688: In a department store there are 120 customers, 90 of whom will buy at least one item.  If 5 customers are selected at random, one by one, find the probability that all will buy at least one item. ## Solution= 0.23061

group(1-8).
size(1-8, 120).

given(exactly(90, 1-8, buy)).

take(1-8, 2-3, 5).

probability(all(2-3, buy)).

property(property, [buy]).

