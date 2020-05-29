% H788: Records show that 1 percent of the trucks in a trucking firm have accidents each day.  If 14 trucks are operating on a given day, what is the probability of at least one accident? ## Solution= 0.13125419

group(1-14).

given(exactly(rel(1/100,1-14), 1-14, accident)).

take_wr(1-14, 1-8, 14).


probability(atleast(1, 1-8, accident)).

property(outcome(0), [accident]).

