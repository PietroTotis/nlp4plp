% L860: When three coins are tossed, the possible outcomes are 3 heads, exactly 2 heads, exactly 1 head or no heads.  Calculate the probability of getting exactly 2 heads. ## Solution= 0.375

group(1-3).
size(1-3, 2).

given(exactly(1, 1-3, v(1-3,0))).
given(exactly(1, 1-3, head)).

take_wr(1-3, 1-5, 3).


probability(exactly(2, 1-5, head)).

property(outcome(0), [head, v(1-3,0)]).

