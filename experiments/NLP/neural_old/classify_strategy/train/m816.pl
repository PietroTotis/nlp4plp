% M816: Studies suggest lie detector tests are `` well below perfection '', 80 percent of the time concluding someone is a spy when he actually is, 16 percent of the time concluding someone is a spy when he isn ' t. Assume 10 of 10,000 govt.  employees are spies.  What is the probability of being a spy and being detected as one? ## Solution= 0.0008

group(population).

given(exactly(rel(9990/10000, population), population, not)).
given(exactly(rel(16/100, population, not), population, and(not, positive))).
given(exactly(rel(80/100, population, yes), population, and(positive, yes))).
given(exactly(rel(10/10000, population), population, yes)).

take(population, 3-4, 1).

probability(and(all(3-4, yes), all(3-4, positive))).

property(test, [positive]).
property(spy, [not, yes]).

