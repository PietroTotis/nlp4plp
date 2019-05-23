% H666: A commercial building is designed with two entrances: entrance I and entrance II.  Two customers arrive separately and enter the building.  Assuming that all outcomes are equally likely, find the probability that the customers use different doors. ## Solution= 0.5

group(1-8).
size(1-8, 2).

given(exactly(1, 1-8, i)).
given(exactly(1, 1-8, ii)).

take_wr(1-8, 1-3, 2).


probability(all_diff(1-3,outcome(0))).

property(outcome(0), [i, ii]).

