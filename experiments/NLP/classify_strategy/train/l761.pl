% L761: Rosa will toss a fair coin twice.  If you know that the first coin toss resulted in heads, what would the probability be that both coins would land on heads? ## Solution= 1/2

group(1-6).
size(1-6, 2).

given(exactly(1, 1-6, head)).
given(exactly(1, 1-6, v(1-6,0))).

take_wr(1-6, 1-3, 2).
observe(nth(1, 1-3, head)).


probability(all(1-3, head)).

property(outcome(0), [head, v(1-6,0)]).

