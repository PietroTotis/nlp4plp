% L109: Two fair coins are tossed.  What is the probability at least one coin lands heads up? ## Solution= 3/4

group(1-3).
size(1-3, 2).

given(exactly(1, 1-3, v(1-3,0))).
given(exactly(1, 1-3, head)).

take_wr(1-3, 1-5, 2).


probability(atleast(1, 1-5, head)).

property(outcome(0), [head, v(1-3,0)]).

