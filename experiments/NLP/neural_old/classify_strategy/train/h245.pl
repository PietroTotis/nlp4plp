% H245: Suppose we roll three dice.  Each with 6 sides labelled 1, 2, 3, 4, 5, and 6.  What is the probability that we get at least one 6? ## Solution= 91/216

group(1-5).
size(1-5, 6).

given(exactly(1, 1-5, 2)).
given(exactly(1, 1-5, 1)).
given(exactly(1, 1-5, 6)).
given(exactly(1, 1-5, 4)).
given(exactly(1, 1-5, 5)).
given(exactly(1, 1-5, 3)).

take_wr(1-5, 1-3, 3).


probability(atleast(1, 1-3, 6)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

