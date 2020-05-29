% M924: You flip a coin and then roll a fair six-sided die.  What is the probability that the coin lands heads-up and the die shows a one? ## Solution= 0.0833333

group(1-11).
size(1-11, 6).

given(exactly(1, 1-11, v(1-11,2))).
given(exactly(1, 1-11, v(1-11,4))).
given(exactly(1, 1-11, one)).
given(exactly(1, 1-11, v(1-11,1))).
given(exactly(1, 1-11, v(1-11,0))).
given(exactly(1, 1-11, v(1-11,3))).
group(1-4).
size(1-4, 2).

given(exactly(1, 1-4, heads-up)).
given(exactly(1, 1-4, v(1-4,0))).

take_wr(1-4, 1-2, 1).

take_wr(1-11, 1-7, 1).


probability(and(all(1-2, heads-up), all(1-7, one))).

property(outcome(1), [v(1-11,2), v(1-11,3), v(1-11,0), v(1-11,1), one, v(1-11,4)]).
property(outcome(0), [v(1-4,0), heads-up]).

