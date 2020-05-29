% L156: We assume that the 5 digits of a car number are chosen randomly and independent of each other from the digits 0 to 9.  Find the probability that there are 5 different digits. ## Solution= 0.3024

group(1-21).
size(1-21, 10).

given(exactly(1, 1-21, 9)).
given(exactly(1, 1-21, 0)).
given(exactly(1, 1-21, v(1-21,4))).
given(exactly(1, 1-21, v(1-21,2))).
given(exactly(1, 1-21, v(1-21,5))).
given(exactly(1, 1-21, v(1-21,6))).
given(exactly(1, 1-21, v(1-21,3))).
given(exactly(1, 1-21, v(1-21,7))).
given(exactly(1, 1-21, v(1-21,1))).
given(exactly(1, 1-21, v(1-21,0))).

take_wr(1-21, 1-12, 5).


probability(all_diff(1-12,outcome(0))).

property(outcome(0), [v(1-21,0), v(1-21,3), v(1-21,2), v(1-21,1), 0, v(1-21,7), v(1-21,6), 9, v(1-21,5), v(1-21,4)]).

