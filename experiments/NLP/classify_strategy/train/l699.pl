% L699: The American Automobile Association reports that of the fatal car and truck accidents, 54 percent are caused by car driver error.  If 3 accidents are chosen at random, find the probability that at least 1 is caused by car driver error. ## Solution= 0.902664

group(2-3).

given(exactly(rel(54/100,2-3), 2-3, error)).

take_wr(2-3, 2-5, 3).


probability(atleast(1, 2-5, error)).

property(outcome(0), [error]).

