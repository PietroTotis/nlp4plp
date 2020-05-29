% H975: In a political race, it is known that 40 percent of the voters favor candidate C.  In a random sample of 100 voters, what is the probability that between 30 and 45 voters favor C? ## Solution= ?

group(1-14).

given(exactly(rel(40/100,1-14), 1-14, c)).

take_wr(1-14, 2-4, 100).


probability(and(less_than(45, 2-4, c), more_than(30, 2-4, c))).

property(outcome(0), [c]).

