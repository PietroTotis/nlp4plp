% L211: A coin is tossed twice.  A sample space S can be described in an obvious manner as HH, HT, TH or TT.  What is the probability of the event at most one tail is obtained? ## Solution= 3/4

group(1-2).
size(1-2, 2).

given(exactly(1, 1-2, v(1-2,0))).
given(exactly(1, 1-2, tail)).

take_wr(1-2, 1-4, 2).


probability(atmost(1, 1-4, tail)).

property(outcome(0), [tail, v(1-2,0)]).

