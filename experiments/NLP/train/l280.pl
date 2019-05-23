% L280: When Maria and Len play a certain board game, the probability that Maria will win the game is 3/4.  Find the probability that Maria wins at least 3 games if they play five games. ## Solution= 0.896484375

group(1-9).

given(exactly(rel(3/4,1-9), 1-9, win)).

take_wr(1-9, 1-5, 5).


probability(atleast(3, 1-5, win)).

property(outcome(0), [win]).

