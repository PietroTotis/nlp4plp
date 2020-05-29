% L839: A person buys a lottery ticket in 50 lotteries, in each of which his chance of winning a prize is 1/100.  What is the probability that he will in a prize at least once. ## Solution= 1-0.99^50

group(1-9).

given(exactly(rel(1/100,1-9), 1-9, prize)).

take_wr(1-9, 1-3, 50).


probability(atleast(1, 1-3, prize)).

property(outcome(0), [prize]).

