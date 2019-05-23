% M285: The probability of James winning a competition is 0.03.  What is the probability that James does not win the competition? ## Solution= 0.97

group(1-7).

given(exactly(rel(.03,1-7), 1-7, win)).

take_wr(1-7, 1-2, 1).


probability(all(1-2, not(win))).

property(outcome(0), [win]).

