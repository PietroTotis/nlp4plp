% M818: Studies suggest lie detector tests are `` well below perfection '', 80 percent of the time concluding someone is a spy when he actually is, 16 percent of the time concluding someone is a spy when he isn ' t. Assume 10 of 10,000 govt.  employees are spies.  What is the overall probability of a positive lie detector test? ## Solution= 0.16064

group(population).

given(exactly(rel(9990/10000, population), population, not)).
given(exactly(rel(16/100, population, not), population, and(not, positive))).
given(exactly(rel(80/100, population, yes), population, and(positive, yes))).
given(exactly(rel(10/10000, population), population, yes)).

take(population, 3-5, 1).

probability(all(3-5, positive)).

property(test, [positive]).
property(spy, [not, yes]).

