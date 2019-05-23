% H899: A software manufacturer knows that one out of 10 software games that the company markets will be a financial success.  The manufacturer selects 10 new games to market.  What is the probability that exactly one game will be a financial success? ## Solution= 0.387420489

group(1-11).

given(exactly(rel(1/10,1-11), 1-11, success)).

take_wr(1-11, 2-2, 10).


probability(exactly(1, 2-2, success)).

property(outcome(0), [success]).

