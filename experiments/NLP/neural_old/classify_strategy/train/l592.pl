% L592: There are 5 hotels in a certain town.  If 3 people check into hotels in a day, what is the probability that they each check into a different hotel? ## Solution= 0.48

group(2-3).
size(2-3, 5).

given(exactly(1, 2-3, v(2-3,0))).
given(exactly(1, 2-3, v(2-3,1))).
given(exactly(1, 2-3, v(2-3,2))).
given(exactly(1, 2-3, v(2-3,3))).
given(exactly(1, 2-3, v(2-3,4))).

take_wr(2-3, 2-4, 3).


probability(all_diff(2-4,outcome(0))).

property(outcome(0), [v(2-3,4), v(2-3,2), v(2-3,3), v(2-3,0), v(2-3,1)]).

