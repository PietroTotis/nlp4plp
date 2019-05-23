% H996: Our boss Anton has a probability of 0.2 of forgetting to bring his apple to work.  In a work week of 5 days, what is the probability that Anton brings his apple every day? ## Solution= .32768

group(1-14).

given(exactly(rel(.2,1-14), 1-14, forget)).

take_wr(1-14, 2-4, 5).


probability(all(2-4, not(forget))).

property(outcome(0), [forget]).

