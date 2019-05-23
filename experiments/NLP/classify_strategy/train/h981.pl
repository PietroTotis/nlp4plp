% H981: A commuter 's drive to work includes seven stoplights.  Assume the probability a light is red when the commuter reaches it is 0.20 and that the lights are far enough apart to operate independently.  If the commuter has to stop for 3 or more lights, what is the probability that he has to stop for 5 or more? ## Solution= 0.03156074362

group(2-5).

given(exactly(rel(.2,2-5), 2-5, red)).

take_wr(2-5, 1-9, 7).
observe(atleast(3, 1-9, red)).


probability(atleast(5, 1-9, red)).

property(outcome(0), [red]).

