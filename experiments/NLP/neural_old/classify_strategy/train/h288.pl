% H288: 15 coupons are numbered 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15.  Seven coupons are selected at random, one at a time with replacement.  What is the probability that 9 would be the largest number appearing on the selected coupons? ## Solution= ((9^7)-(8^7))/(15^7)

group(1-2).
size(1-2, 15).

given(exactly(1, 1-2, 9)).
given(exactly(1, 1-2, 14)).
given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 15)).
given(exactly(1, 1-2, 13)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 7)).
given(exactly(1, 1-2, 12)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 10)).
given(exactly(1, 1-2, 3)).
given(exactly(1, 1-2, 11)).
given(exactly(1, 1-2, 8)).

take_wr(1-2, 2-2, 7).


probability(aggcmp(2-2,outcome(0),max,=:=,9)).

property(outcome(0), [11, 10, 13, 12, 15, 14, 1, 3, 2, 5, 4, 7, 6, 9, 8]).

