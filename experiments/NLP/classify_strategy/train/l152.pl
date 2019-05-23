% L152: A fair die is tossed 7 times.  We say that a toss is a success if a 5 or 6 appears ; otherwise it 's a failure.  What is the probability that there are exactly 3 successes? ## Solution= 560/2187

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, v(1-3,3))).
given(exactly(1, 1-3, v(1-3,2))).
given(exactly(1, 1-3, v(1-3,1))).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, v(1-3,0))).

take_wr(1-3, 1-5, 7).


probability(exactly(3, 1-5, or(5, 6))).

property(outcome(0), [v(1-3,3), v(1-3,2), v(1-3,1), v(1-3,0), 5, 6]).

