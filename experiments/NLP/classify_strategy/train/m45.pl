% M45: A 5 digit PIN number can begin with any digit except zero and the remaining digits have no restriction.  If repeated digits are allowed, what is the probability of the PIN code beginning with a 7 and ending with an 8? ## Solution= 0.01111111111

group(1-15).
size(1-15, 10).

given(exactly(1, 1-15, v(1-15,2))).
given(exactly(1, 1-15, v(1-15,6))).
given(exactly(1, 1-15, v(1-15,0))).
given(exactly(1, 1-15, 7)).
given(exactly(1, 1-15, v(1-15,1))).
given(exactly(1, 1-15, v(1-15,5))).
given(exactly(1, 1-15, v(1-15,3))).
given(exactly(1, 1-15, 8)).
given(exactly(1, 1-15, v(1-15,4))).
given(exactly(1, 1-15, v(1-15,7))).
group(1-7).
size(1-7, 9).

given(exactly(1, 1-7, v(1-7,6))).
given(exactly(1, 1-7, v(1-7,1))).
given(exactly(1, 1-7, v(1-7,5))).
given(exactly(1, 1-7, v(1-7,2))).
given(exactly(1, 1-7, 8)).
given(exactly(1, 1-7, 7)).
given(exactly(1, 1-7, v(1-7,0))).
given(exactly(1, 1-7, v(1-7,4))).
given(exactly(1, 1-7, v(1-7,3))).

take_wr(1-15, 1-5-0, 1).
take_wr(1-7, 1-5-1, 1).

probability(and(all(1-5-1, 8), all(1-5-0, 7))).

property(outcome(0), [v(1-15,1), v(1-15,6), v(1-15,7), v(1-15,4), v(1-15,5), v(1-15,2), v(1-15,3), v(1-15,0), 7, 8]).

