% H37: Mary has had three children, each of them a boy.  What are the odds that her next child will be a girl? ## Solution= 1/2

group(2-8).
size(2-8, 2).

given(exactly(1, 2-8, boy)).
given(exactly(1, 2-8, girl)).

take_wr(2-8, 2-4, 1).


probability(all(2-4, girl)).

property(outcome(0), [boy, girl]).

