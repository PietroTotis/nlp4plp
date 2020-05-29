% L631: Choose each digit of a 5 digit number at random from digits 1, 2, 3, 4, 5, 6, 7, 8 and 9.  Compute the probability that no digit appears more than twice. ## Solution= ?

group(1-3).
size(1-3, 9).

given(exactly(1, 1-3, 9)).
given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 7)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).
given(exactly(1, 1-3, 8)).

take_wr(1-3, 1-1, 5).


probability(and(and(and(and(atmost(2, 1-1, 1), atmost(2, 1-1, 2)), atmost(2, 1-1, 3)), and(atmost(2, 1-1, 4), atmost(2, 1-1, 5))), and(and(atmost(2, 1-1, 6), atmost(2, 1-1, 7)), and(atmost(2, 1-1, 8), atmost(2, 1-1, 9))))).

property(outcome(0), [1, 3, 2, 5, 4, 7, 6, 9, 8]).

