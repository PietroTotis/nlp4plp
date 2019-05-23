% M923: In a group there are 15 managers and 25 clients.  If three people are chosen, what is the probability of choosing three clients sequentially? ## Solution= 0.2327935223

group(1-3).

given(exactly(25, 1-3, client)).
given(exactly(15, 1-3, manager)).

take(1-3, 2-3, 3).

probability(all(2-3, client)).

property(function, [manager, client]).

