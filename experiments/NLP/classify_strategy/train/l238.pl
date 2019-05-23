% L238: A tetrahedral die, with faces labeled 0, 1, 2 and 3, is loaded so that the zero is three times as likely to occur as any other number.  If A denotes the event that an odd number occurs, then find the probability of event A for one toss of the die. ## Solution= 1/3

group(1-3).

given(exactly(rel(3/6,1-3), 1-3, 0)).
given(exactly(rel(1/6,1-3), 1-3, 1)).
given(exactly(rel(1/6,1-3), 1-3, 3)).
given(exactly(rel(1/6,1-3), 1-3, 2)).

take_wr(1-3, 2-21, 1).


probability(aggcmp(2-21,outcome(0),sum,is_odd)).

property(outcome(0), [1, 0, 3, 2]).

