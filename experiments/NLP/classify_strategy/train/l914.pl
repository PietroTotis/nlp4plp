% L914: You enter a chess tournament where your probability of winning a game is 0.3 against half the players, call them type 1, 0.4 against a quarter of the players, call them type 2, and 0.5 against the remaining quarter of the players, call them type 3.  You play a game against a randomly chosen opponent.  What is the probability of winning? ## Solution= 0.375

group(1-18).

given(exactly(rel(1/4, 1-18), 1-18, 3)).
given(exactly(rel(0.4, 1-18, 2), 1-18, and(2, win))).
given(exactly(rel(1/4, 1-18), 1-18, 2)).
given(exactly(rel(0.3, 1-18, 1), 1-18, and(1, win))).
given(exactly(rel(0.5, 1-18, 3), 1-18, and(3, win))).
given(exactly(rel(1/2, 1-18), 1-18, 1)).

take(1-18, 2-9, 1).

probability(all(2-9, win)).

property(win, [win]).
property(type, [1, 3, 2]).

