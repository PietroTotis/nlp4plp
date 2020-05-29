% H894: A certain rare blood type can be found in only 0.05 percent of people.  If the population of a randomly selected group is 3000, what is the probability that at least two persons in the group have this rare blood type? ## Solution= .442

group(1-4).

given(exactly(rel(0.05/100,1-4), 1-4, rare)).

take_wr(1-4, 2-3, 3000).


probability(atleast(2, 2-3, rare)).

property(outcome(0), [rare]).

