% M284: A rugby team can win, draw or lose a match.  The probability of winning is 0.4, that of drawing is 0.35.  What is the probability of losing the match? ## Solution= .25

group(1-11).

given(exactly(u, 1-11, lose)).
given(exactly(rel(0.35,1-11), 1-11, draw)).
given(exactly(rel(0.4,1-11), 1-11, win)).

take_wr(1-11, 3-4, 1).


probability(all(3-4, lose)).

property(outcome(0), [win, draw, lose]).

