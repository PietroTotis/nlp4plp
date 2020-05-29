% H359: A best of five series ends when one team wins three games.  The probability of team A defeating team B in any game is 4/9.  What is the probability that team A will win the series? ## Solution= 7808/19683

group(2-6).

given(exactly(rel(4/9,2-6), 2-6, defeat)).

take_wr(2-6, 1-5, 5).


probability(atleast(3, 1-5, defeat)).

property(outcome(0), [defeat]).

