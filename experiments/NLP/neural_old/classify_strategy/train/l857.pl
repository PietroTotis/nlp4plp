% L857: One hundred tickets are sold in a raffle.  What is the probability of winning the raffle if you buy 5 tickets? ## Solution= 0.05

group(1-3).
size(1-3, 100).

given(exactly(1, 1-3, raffle)).

take(1-3, 2-13, 5).

probability(exactly(1, 2-13, raffle)).

property(property, [raffle]).

