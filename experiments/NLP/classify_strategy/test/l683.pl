% L683: If 25 percent of U.S. federal prison inmates are not U.S. citizens, find the probability that 2 randomly selected federal prison inmates will not be U.S. citizens. ## Solution= 0.0625

group(1-23).

given(exactly(rel(25/100,1-23), 1-23, citizen)).

take_wr(1-23, 1-20, 2).


probability(all(1-20, citizen)).

property(outcome(0), [citizen]).

