% H727: The probability that a patient recovers from a delicate heart operation is 0.8.  What is the probability that exactly 2 of the next 3 patients who have this operation survive? ## Solution= .384

group(1-5).

given(exactly(rel(.8,1-5), 1-5, recover)).

take_wr(1-5, 2-12, 3).


probability(exactly(2, 2-12, recover)).

property(outcome(0), [recover]).

