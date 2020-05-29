% H96: A bowl contains twenty cherries, exactly fifteen of which have had their stones removed.  A greedy pig eats five whole cherries, picked at random, without remarking on the presence or absence of stones.  Subsequently, a cherry is picked randomly from the remaining fifteen.  What is the probability that this cherry contains a stone? ## Solution= 1/4

group(rest(2-7)).

group(1-2).
size(1-2, 20).

given(exactly(15, 1-2, no_stone)).

take(rest(2-7), 3-4, 1).
take(1-2, 2-7, 5).

probability(none(3-4, no_stone)).

property(property, [no_stone]).

