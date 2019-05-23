% H878: According to a recent mortality table, the probability that a 35-year old U.S. citizen will live to age 65 is 0.725.  What is the probability that neither John nor Jim lives to that age? ## Solution= 0.075625

group(1-13).

given(exactly(rel(.725,1-13), 1-13, live)).

take_wr(1-13, 1-17, 2).


probability(all(1-17, not(live))).

property(outcome(0), [live]).

