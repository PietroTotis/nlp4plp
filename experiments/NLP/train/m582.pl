% M582: You roll two 6-sided dice.  The first die shows a TWO and the other die rolls under the table and you can not see it.  Now, what is the probability that both die show TWO? ## Solution= 0.166666666666667

group(1-5).
size(1-5, 6).

given(exactly(1, 1-5, v(1-5,4))).
given(exactly(1, 1-5, v(1-5,3))).
given(exactly(1, 1-5, v(1-5,0))).
given(exactly(1, 1-5, v(1-5,2))).
given(exactly(1, 1-5, two)).
given(exactly(1, 1-5, v(1-5,1))).

take_wr(1-5, 1-2, 2).
observe(nth(1, 1-2, two)).


probability(all(1-2, two)).

property(outcome(0), [v(1-5,2), v(1-5,4), two, v(1-5,1), v(1-5,0), v(1-5,3)]).

