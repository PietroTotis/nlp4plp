% H972: A manufacturer of dry cells actually makes two batteries that appear to be identical.  Batteries of Type A last more than 600 hours with probability 0.30 and batteries of Type B last more than 600 hours with probability 0.40.  What is the probability that 5 out of 10 of Type A batteries last more than 600 hours? ## Solution= 0.10291935

group(2-1).

given(exactly(rel(.3,2-1), 2-1, last)).

take_wr(2-1, 3-13, 10).


probability(exactly(5, 3-13, last)).

property(outcome(0), [last]).

