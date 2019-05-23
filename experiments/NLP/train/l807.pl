% L807: A coin is tossed until a head appears or until it has been tossed three times.  Given that head does not occur on the first toss, what is the probability that coin is tossed three times? ## Solution= 1/2

group(1-2).
size(1-2, 2).

given(exactly(1, 1-2, v(1-2,0))).
given(exactly(1, 1-2, head)).

take_wr(1-2, 1-4, 2).
observe(nth(1, 1-4, not(head))).


probability(exactly(2, 1-4, not(head))).

property(outcome(0), [head, v(1-2,0)]).

