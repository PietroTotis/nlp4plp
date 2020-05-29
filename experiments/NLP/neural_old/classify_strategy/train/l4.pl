% L4: A die with 6 sides, numbered 1, 2, 3, 4, 5 and 6, is rolled and a coin is tossed, find the probability that the die shows an odd number and the coin shows a head. ## Solution= 1/4

group(1-24).
size(1-24, 2).

given(exactly(1, 1-24, v(1-24,0))).
given(exactly(1, 1-24, head)).
group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).

take_wr(1-24, 1-26, 1).

take_wr(1-2, 1-21, 1).


probability(and(all(1-26, head), aggcmp(1-21,outcome(1),sum,is_odd))).

property(outcome(1), [1, 3, 2, 5, 4, 6]).
property(outcome(0), [head, v(1-24,0)]).

