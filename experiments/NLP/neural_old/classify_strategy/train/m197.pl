% M197: It is known that 80 percent of all freshmen have had at least one drink.  Five freshmen are selected at random.  What is the probability that all 5 freshmen have had at least one drink? ## Solution= 0.32768

group(1-9).

given(exactly(rel(80/100, 1-9), 1-9, drink)).

take(1-9, 2-2, 5).

probability(all(2-2, drink)).

property(property, [drink]).

