% H576: What proportion of families with exactly 6 children should be expected to have at least 3 boys? ## Solution= 21/32

group(1-8).
size(1-8, 2).

given(exactly(1, 1-8, v(1-8,0))).
given(exactly(1, 1-8, boy)).

take_wr(1-8, 1-4, 6).


probability(atleast(3, 1-4, boy)).

property(outcome(0), [boy, v(1-8,0)]).

