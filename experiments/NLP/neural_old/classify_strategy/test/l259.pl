% L259: What is the probability of flipping a coin and not landing on heads? ## Solution= 1/2

group(1-8).
size(1-8, 2).

given(exactly(1, 1-8, v(1-8,0))).
given(exactly(1, 1-8, head)).

take_wr(1-8, 1-6, 1).


probability(all(1-6, not(head))).

property(outcome(0), [head, v(1-8,0)]).

