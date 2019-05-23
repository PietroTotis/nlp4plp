% L276: The probability that Misha will win a word game is 3/4.  If Misha plays the game 5 times, what is the probability that he will win exactly 3 games? ## Solution= 135/512

group(2-5).

given(exactly(rel(3/4,2-5), 2-5, win)).

take_wr(2-5, 2-3, 5).


probability(exactly(3, 2-3, win)).

property(outcome(0), [win]).

