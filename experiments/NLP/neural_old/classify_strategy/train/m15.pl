% M15: A spinner has 4 equal sectors colored yellow, blue, green and red.  What are the chances of landing on blue after spinning the spinner? ## Solution= 1/4

group(1-2).
size(1-2, 4).

given(exactly(1, 1-2, blue)).
given(exactly(1, 1-2, yellow)).
given(exactly(1, 1-2, green)).
given(exactly(1, 1-2, red)).

take_wr(1-2, 2-10, 1).


probability(all(2-10, blue)).

property(outcome(0), [blue, green, red, yellow]).

