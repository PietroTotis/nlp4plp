% H536: In a raffle in which 200 tickets are sold, there are 3 prizes - first prize of $ 100, second prize of $ 50, third prize of $ 30.  A girl has one ticket in the raffle.  What is the probability that she wins a prize? ## Solution= 3/200

group(1-7).
size(1-7, 200).

given(exactly(3, 1-7, prize)).

take(1-7, 2-5, 1).

probability(all(2-5, prize)).

property(property, [prize]).

