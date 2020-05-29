% M914: In a group, there are 10 owners and 20 workers.  If four people are chosen, what is the probability of choosing four workers sequentially? ## Solution= 0.1767925561

group(1-3).

given(exactly(10, 1-3, owner)).
given(exactly(20, 1-3, worker)).

take(1-3, 2-3, 4).

probability(all(2-3, worker)).

property(function, [owner, worker]).

