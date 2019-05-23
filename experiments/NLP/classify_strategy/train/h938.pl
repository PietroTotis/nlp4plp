% H938: A box of manufactured items contains 8 items that are good and 3 that are not usable.  What is the probability that a sample of 5 items contains exactly 1 unusable item? ## Solution= 5/11

group(1-2).

given(exactly(3, 1-2, not)).
given(exactly(8, 1-2, good)).

take(1-2, 2-10, 5).

probability(exactly(1, 2-10, not)).

property(usable, [not, good]).

