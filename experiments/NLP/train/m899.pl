% M899:  Four dice are rolled sequentially.  Each die has six sides, labeled 1, 2, 3, 4, 5 and 6.  What is the probability that the first die shows six and other die shows an odd number? ## Solution= 0.145833333333333

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).

take_wr(1-2, 1-4, 4).

probability(and(nth(1, 1-4, 6), atleast(1, 1-4, is_odd))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

