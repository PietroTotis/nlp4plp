% L560: The probability that a patient recovers from a delicate heart operation is 0.8.  What is the probability that exactly 2 of the next 3 patients who have this operation survive? ## Solution= 0.384

group(2-12).

given(exactly(rel(0.8,2-12), 2-12, recover)).

take_wr(2-12, 2-16, 3).


probability(exactly(2, 2-16, recover)).

property(outcome(0), [recover]).

