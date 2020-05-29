% L279: The probability of Chris 's making a free throw is 2/3.  Find the probability that exactly 4 throws are made if he shoots five times. ## Solution= 0.32921811

group(1-9).

given(exactly(rel(2/3,1-9), 1-9, free)).

take_wr(1-9, 1-6, 5).


probability(exactly(4, 1-6, free)).

property(outcome(0), [free]).

