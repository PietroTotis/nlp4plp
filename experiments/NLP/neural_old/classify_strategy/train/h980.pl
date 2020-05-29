% H980: A commuter 's drive to work includes seven stoplights.  Assume the probability a light is red when the commuter reaches it is 0.20 and that the lights are far enough apart to operate independently.  Find the probability that the number of lights the commuter has to stop for is greater than or equal to 5. ## Solution= 0.004672

group(2-5).

given(exactly(rel(.2,2-5), 2-5, red)).

take_wr(2-5, 1-9, 7).


probability(atleast(5, 1-9, red)).

property(outcome(0), [red]).

