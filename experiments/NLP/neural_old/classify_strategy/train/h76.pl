% H76: Charles claims that he can distinguish between beer and ale 75 percent of the time.  Ruth bets that he can not and, in fact, just guesses.  To settle this, a bet is made: Charles is to be given ten small glasses, each having been filled with beer or ale, chosen by tossing a fair coin.  He wins the bet if he gets seven or more correct.  Find the probability that Charles wins if he has the ability that he claims. ## Solution= 0.77587509

group(1-6).

given(exactly(rel(.75,1-6), 1-6, correct)).

take_wr(1-6, 1-15, 10).


probability(atleast(7, 1-15, correct)).

property(outcome(0), [correct]).

