% H746: The probability that a patient recovers from a delicate heart operation is 0.9.  What is the probability that exactly 5 of the next 7 patients having this operation survive? ## Solution= .1240

group(1-5).

given(exactly(rel(.9,1-5), 1-5, recover)).

take_wr(1-5, 2-12, 7).


probability(exactly(5, 2-12, recover)).

property(outcome(0), [recover]).

