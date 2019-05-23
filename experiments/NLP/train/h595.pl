% H595: A man finds that on the average he hits the target 9 times out of every 10 times and scores a bull 's eye on the average once every 5 rounds.  He fires 4 rounds.  What is the probability that he scores at least 2 bull 's eyes? ## Solution= 113/625

group(1-20).

given(exactly(rel(1/5,1-20), 1-20, bull)).

take_wr(1-20, 2-2, 4).


probability(atleast(2, 2-2, bull)).

property(outcome(0), [bull]).

