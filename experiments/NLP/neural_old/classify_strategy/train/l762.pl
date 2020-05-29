% L762: A spinner is divided into 3 equal sections, with sections labeled 1, 2, and 3.  What is the probability of spinning a 3 on the spinner if you know the arrow landed on an odd number? ## Solution= 1/2

group(2-11).
size(2-11, 3).

given(exactly(1, 2-11, 1)).
given(exactly(1, 2-11, 2)).
given(exactly(1, 2-11, 3)).

take_wr(2-11, 2-6, 1).
observe(aggcmp(2-6,outcome(0),sum,is_odd)).


probability(all(2-6, 3)).

property(outcome(0), [1, 3, 2]).

