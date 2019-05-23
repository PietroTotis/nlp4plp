% L672: A Harris poll found that 46 percent of Americans say they suffer great stress at least once a week.  If three people are selected at random, find the probability that all three will say that they suffer great stress at least once a week. ## Solution= 0.097336

group(2-3).

given(exactly(rel(46/100,2-3), 2-3, stress)).

take_wr(2-3, 2-5, 3).


probability(all(2-5, stress)).

property(outcome(0), [stress]).

