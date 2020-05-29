% L687: The U.S. Department of Justice reported that 6 percent of all U.S. murders are committed without a weapon.  If 3 murder cases are selected at random, find the probability that a weapon was not used in any one of them. ## Solution= 0.000216

group(2-4).

given(exactly(rel(0.06,2-4), 2-4, weapon)).

take_wr(2-4, 2-6, 3).


probability(all(2-6, weapon)).

property(outcome(0), [weapon]).

