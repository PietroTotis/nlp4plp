% L202: Suppose we dial a random number on my telephone, the number is six digits long.  What is the probability that the number does not contain a 6? ## Solution= 0.531441

group(1-12).
size(1-12, 10).

given(exactly(1, 1-12, v(1-12,6))).
given(exactly(1, 1-12, v(1-12,8))).
given(exactly(1, 1-12, v(1-12,2))).
given(exactly(1, 1-12, v(1-12,4))).
given(exactly(1, 1-12, v(1-12,3))).
given(exactly(1, 1-12, v(1-12,0))).
given(exactly(1, 1-12, v(1-12,5))).
given(exactly(1, 1-12, v(1-12,1))).
given(exactly(1, 1-12, v(1-12,7))).
given(exactly(1, 1-12, 6)).

take_wr(1-12, 1-3, 6).


probability(all(1-3, not(6))).

property(outcome(0), [6, v(1-12,5), v(1-12,4), v(1-12,7), v(1-12,6), v(1-12,1), v(1-12,0), v(1-12,3), v(1-12,2), v(1-12,8)]).

