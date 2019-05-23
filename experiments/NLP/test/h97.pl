% H97: A bowl contains twenty cherries, exactly fifteen of which have had their stones removed.  A greedy pig eats five whole cherries, picked at random, without remarking on the presence or absence of stones.  Subsequently, a cherry is picked randomly from the remaining fifteen.  Given that this cherry contains a stone, what is the probability that the pig consumed at least one stone? ## Solution= 1-((15/19)*(14/18)*(13/17)*(12/16)*(11/15))

group(rest(2-7)).

group(1-2).
size(1-2, 20).

given(exactly(15, 1-2, no_stone)).

take(rest(2-7), 3-4, 1).
observe(none(3-4, no_stone)).
take(1-2, 2-7, 5).

probability(atleast(1, 2-7, not(no_stone))).

property(property, [no_stone]).

