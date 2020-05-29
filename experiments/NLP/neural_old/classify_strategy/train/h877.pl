% H877: According to a recent mortality table, the probability that a 35-year old U.S. citizen will live to age 65 is 0.725.  What is the probability that John and Jim, two 35-year old Americans who are not relatives, both live to age 65? ## Solution= 0.525625

group(1-13).

given(exactly(rel(.725,1-13), 1-13, live)).

take_wr(1-13, 1-17, 2).


probability(all(1-17, live)).

property(outcome(0), [live]).

