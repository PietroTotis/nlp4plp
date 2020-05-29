% L632: Toss two fair coins, blindfolded.  Somebody tells you that you tossed at least one Heads.  What is the probability that both tosses are Heads? ## Solution= 1/3

group(1-4).
size(1-4, 2).

given(exactly(1, 1-4, v(1-4,0))).
given(exactly(1, 1-4, head)).

take_wr(1-4, 1-1, 2).
observe(atleast(1, 1-1, head)).


probability(all(1-1, head)).

property(outcome(0), [v(1-4,0), head]).

