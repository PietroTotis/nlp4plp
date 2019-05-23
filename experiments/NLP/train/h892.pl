% H892: A graduate class consists of six students.  What is the probability that exactly three of them are born either in April or in October? ## Solution= 0.053583676

group(1-7).
size(1-7, 12).

given(exactly(1, 1-7, v(1-7,7))).
given(exactly(1, 1-7, v(1-7,6))).
given(exactly(1, 1-7, april)).
given(exactly(1, 1-7, v(1-7,1))).
given(exactly(1, 1-7, v(1-7,5))).
given(exactly(1, 1-7, v(1-7,2))).
given(exactly(1, 1-7, v(1-7,8))).
given(exactly(1, 1-7, october)).
given(exactly(1, 1-7, v(1-7,0))).
given(exactly(1, 1-7, v(1-7,4))).
given(exactly(1, 1-7, v(1-7,3))).
given(exactly(1, 1-7, v(1-7,9))).

take_wr(1-7, 1-3, 6).


probability(exactly(3, 1-3, or(april, october))).

property(outcome(0), [v(1-7,0), october, v(1-7,7), v(1-7,6), v(1-7,9), v(1-7,8), v(1-7,5), v(1-7,4), april, v(1-7,3), v(1-7,2), v(1-7,1)]).

