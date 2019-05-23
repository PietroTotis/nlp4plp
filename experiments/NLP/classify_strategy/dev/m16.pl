% M16:  In a well-known game you have to decide which your opponent is going to choose: paper, stone or scissors.  If you guess entirely at random, what is the probability that you are right exactly 5 times out of 15? ## Solution=0.21430705

group(1-4).

given(exactly(rel(1/3, 1-4), 1-4, correct)).

take_wr(1-4, 2-3, 15).

probability(exactly(5, 2-3, correct)).

property(outcome(0), [correct]).
