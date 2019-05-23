% H594: A man finds that on the average he hits the target 9 times out of every 10 times and scores a bull 's eye on the average once every 5 rounds.  He fires 4 rounds.  What is the probability that he hits the target each time? ## Solution= .6561

group(1-9).

given(exactly(rel(9/10,1-9), 1-9, hit)).

take_wr(1-9, 2-2, 4).


probability(all(2-2, hit)).

property(outcome(0), [hit]).

