% L633: Toss a coin 10 times.  If you know that exactly 7 Heads are tossed, what is the probability that your first toss is Heads? ## Solution= 7/10

group(1-3).
size(1-3, 2).

given(exactly(1, 1-3, v(1-3,0))).
given(exactly(1, 1-3, head)).

take_wr(1-3, 1-1, 10).
observe(exactly(7, 1-1, head)).


probability(nth(1, 1-1, head)).

property(outcome(0), [head, v(1-3,0)]).

