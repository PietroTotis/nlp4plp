% L310: Find the probability that among seven persons two were born on a Sunday and two on a Tuesday. ## Solution= 26250/823543

group(1-7).
size(1-7, 7).

given(exactly(1, 1-7, v(1-7,1))).
given(exactly(1, 1-7, v(1-7,2))).
given(exactly(1, 1-7, sunday)).
given(exactly(1, 1-7, v(1-7,0))).
given(exactly(1, 1-7, v(1-7,4))).
given(exactly(1, 1-7, v(1-7,3))).
given(exactly(1, 1-7, tuesday)).

take_wr(1-7, 1-10, 7).


probability(and(exactly(2, 1-10, sunday), exactly(2, 1-10, tuesday))).

property(outcome(0), [v(1-7,0), tuesday, v(1-7,4), sunday, v(1-7,3), v(1-7,2), v(1-7,1)]).

