% M702: The weather report calls for 55 percent chance of rain.  According to this report, what is the probability that it will not rain? ## Solution= 45/100

group(1-2).

given(exactly(rel(55/100,1-2), 1-2, rain)).

take_wr(1-2, 2-4, 1).


probability(all(2-4, not(rain))).

property(outcome(0), [rain]).

