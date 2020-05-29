% L605: A couple has 2 children.  What is the probability that both are girls if the older of the two is a girl? ## Solution= 1/2

group(1-5).
size(1-5, 2).

given(exactly(1, 1-5, v(1-5,0))).
given(exactly(1, 1-5, girl)).

take_wr(1-5, 1-3, 2).
observe(nth(2, 1-3, girl)).


probability(all(1-3, girl)).

property(outcome(0), [girl, v(1-5,0)]).

