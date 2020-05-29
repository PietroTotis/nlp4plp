% L533: In a game of Yahtzee, where 5 six-sided dice, labeled 1, 2, 3, 4, 5 and 6, are tossed simultaneously, find the probability of getting 4 of a kind. ## Solution= 25/1296

group(1-10).
size(1-10, 6).

given(exactly(1, 1-10, 2)).
given(exactly(1, 1-10, 1)).
given(exactly(1, 1-10, 6)).
given(exactly(1, 1-10, 4)).
given(exactly(1, 1-10, 5)).
given(exactly(1, 1-10, 3)).

take_wr(1-10, 1-26, 5).


probability(or(or(or(exactly(4, 1-26, 1), exactly(4, 1-26, 2)), or(exactly(4, 1-26, 3), exactly(4, 1-26, 4))), or(exactly(4, 1-26, 5), exactly(4, 1-26, 6)))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

