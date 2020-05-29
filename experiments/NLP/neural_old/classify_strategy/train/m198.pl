% M198: It is known that 80 percent of all freshmen have had at least one drink.  Five freshmen are selected at random.  What is the probability that at least one freshman has not had at least one drink? ## Solution= 0.67232

group(1-9).

given(exactly(rel(80/100, 1-9), 1-9, drink)).

take(1-9, 2-2, 5).

probability(atleast(1, 2-2, not(drink))).

property(property, [drink]).

