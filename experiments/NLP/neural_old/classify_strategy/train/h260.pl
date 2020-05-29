% H260: If the probability that a man and 60 will live to be 70 is 0.65, what is the probability that out of 10 men, now 60, at least 7 will live to be 70? ## Solution= 0.51382702

group(1-10).

given(exactly(rel(.65,1-10), 1-10, live)).

take_wr(1-10, 1-34, 10).


probability(atleast(7, 1-34, live)).

property(outcome(0), [live]).

