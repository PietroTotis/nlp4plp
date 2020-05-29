% H504: A pair of dice is thrown.  Each has 6 sides numbered 1, 2, 3, 4, 5 and 6.  If it is known that one die shows a 4, what is the probability that the other die shows a 5? ## Solution= 2/11

group(1-4).
size(1-4, 6).

given(exactly(1, 1-4, 2)).
given(exactly(1, 1-4, 1)).
given(exactly(1, 1-4, 6)).
given(exactly(1, 1-4, 4)).
given(exactly(1, 1-4, 5)).
given(exactly(1, 1-4, 3)).

take_wr(1-4, 1-6, 2).
observe(atleast(1, 1-6, 4)).


probability(exactly(1, 1-6, 5)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

