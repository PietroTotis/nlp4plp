% H34: Marcus has a pair of dice.  He needs to roll a 12 to win the game.  What are the odds that he will roll a 6 on both die? ## Solution= 1/36

group(1-6).
size(1-6, 6).

given(exactly(1, 1-6, v(1-6,1))).
given(exactly(1, 1-6, v(1-6,2))).
given(exactly(1, 1-6, 6)).
given(exactly(1, 1-6, v(1-6,0))).
given(exactly(1, 1-6, v(1-6,4))).
given(exactly(1, 1-6, v(1-6,3))).

take_wr(1-6, 1-4, 2).


probability(all(1-4, 6)).

property(outcome(0), [v(1-6,2), v(1-6,3), v(1-6,0), v(1-6,1), 6, v(1-6,4)]).

