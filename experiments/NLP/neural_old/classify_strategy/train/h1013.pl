% H1013: The probability that I accidentally delete my own problem is 0.01.  Out of a sample of 10 problems, what is the probability that 3 of them eventually disappear? ## Solution= .0001118

group(1-9).

given(exactly(rel(.01,1-9), 1-9, delete)).

take_wr(1-9, 2-7, 10).


probability(exactly(3, 2-7, delete)).

property(outcome(0), [delete]).

