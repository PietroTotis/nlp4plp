% L894: You roll a standard 6-sided die, labeled 1, 2, 3, 4, 5 and 6, and draw a letter from a bag containing the 26 tiles, each with a different letter of our standard English alphabet on it.  What are your chances of picking a 2 and an M? ## Solution= 0.00641025641025641

group(1-24).
size(1-24, 26).

given(exactly(1, 1-24, v(1-24,23))).
given(exactly(1, 1-24, v(1-24,15))).
given(exactly(1, 1-24, v(1-24,21))).
given(exactly(1, 1-24, v(1-24,14))).
given(exactly(1, 1-24, v(1-24,9))).
given(exactly(1, 1-24, v(1-24,22))).
given(exactly(1, 1-24, v(1-24,1))).
given(exactly(1, 1-24, v(1-24,7))).
given(exactly(1, 1-24, m)).
given(exactly(1, 1-24, v(1-24,0))).
given(exactly(1, 1-24, v(1-24,6))).
given(exactly(1, 1-24, v(1-24,20))).
given(exactly(1, 1-24, v(1-24,4))).
given(exactly(1, 1-24, v(1-24,11))).
given(exactly(1, 1-24, v(1-24,10))).
given(exactly(1, 1-24, v(1-24,5))).
given(exactly(1, 1-24, v(1-24,8))).
given(exactly(1, 1-24, v(1-24,17))).
given(exactly(1, 1-24, v(1-24,3))).
given(exactly(1, 1-24, v(1-24,24))).
given(exactly(1, 1-24, v(1-24,2))).
given(exactly(1, 1-24, v(1-24,18))).
given(exactly(1, 1-24, v(1-24,19))).
given(exactly(1, 1-24, v(1-24,12))).
given(exactly(1, 1-24, v(1-24,16))).
given(exactly(1, 1-24, v(1-24,13))).
group(1-6).
size(1-6, 6).

given(exactly(1, 1-6, 2)).
given(exactly(1, 1-6, 1)).
given(exactly(1, 1-6, 6)).
given(exactly(1, 1-6, 4)).
given(exactly(1, 1-6, 5)).
given(exactly(1, 1-6, 3)).

take_wr(1-6, 1-2, 1).

take_wr(1-24, 1-22, 1).


probability(and(all(1-2, 2), all(1-22, m))).

property(outcome(1), [v(1-24,2), v(1-24,0), v(1-24,24), v(1-24,18), v(1-24,20), v(1-24,23), v(1-24,15), v(1-24,17), v(1-24,8), v(1-24,11), v(1-24,6), v(1-24,13), v(1-24,4), v(1-24,5), v(1-24,3), v(1-24,1), v(1-24,21), v(1-24,19), v(1-24,22), v(1-24,14), m, v(1-24,16), v(1-24,10), v(1-24,9), v(1-24,7), v(1-24,12)]).
property(outcome(0), [1, 3, 2, 5, 4, 6]).

