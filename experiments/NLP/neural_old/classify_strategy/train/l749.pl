% L749: Martina believes that the probability of her passing her next test is 60 percent.  What is the probability that Martina does not pass? ## Solution= 0.4

group(1-11).

given(exactly(rel(0.6,1-11), 1-11, pass)).

take_wr(1-11, 1-1, 1).


probability(all(1-1, not(pass))).

property(outcome(0), [pass]).

