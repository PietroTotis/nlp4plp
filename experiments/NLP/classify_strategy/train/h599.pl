% H599: If, over a certain period of time, rain falls at random and on the average on 12 days in every 30, find the probability that rain will fall on just 3 days of a given week? ## Solution= .2903

group(1-10).

given(exactly(rel(12/30,1-10), 1-10, fall)).

take_wr(1-10, 1-39, 7).


probability(exactly(3, 1-39, fall)).

property(outcome(0), [fall]).

