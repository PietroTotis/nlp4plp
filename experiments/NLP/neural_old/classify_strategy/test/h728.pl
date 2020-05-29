% H728: The probability that a patient recovers from a delicate heart operation is 0.8.  What is the probability that all of the next 3 patients who have this operation survive? ## Solution= .512

group(1-5).

given(exactly(rel(0.8,1-5), 1-5, recover)).

take_wr(1-5, 2-11, 3).


probability(all(2-11, recover)).

property(outcome(0), [recover]).

