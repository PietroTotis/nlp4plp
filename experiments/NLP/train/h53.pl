% H53: It is known that a patient with a disease will respond to treatment with probability equal to 0.9.  If three patients with the disease are treated and respond independently, find the probability that at least one will respond. ## Solution= .999

group(1-13).

given(exactly(rel(.9,1-13), 1-13, respond)).

take_wr(1-13, 2-3, 3).


probability(atleast(1, 2-3, respond)).

property(outcome(0), [respond]).

