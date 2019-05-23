% M331: Suppose that 53.2 percent of car owners are male and that 12.7 percent of all car owners change their own oil.  If 31.5 percent of male car owners change their own oil, what is the probability that a randomly selected car owner is male and changes his own oil? ## Solution= 0.16758

group(1-7).

given(exactly(rel(53.2/100, 1-7), 1-7, male)).
given(exactly(rel(12.7/100, 1-7), 1-7, change)).
given(exactly(rel(31.5/100, 1-7, male), 1-7, and(change, male))).

take(1-7, 2-22, 1).

probability(and(all(2-22, male), all(2-22, change))).

property(change_oil, [change]).
property(sex, [male]).

