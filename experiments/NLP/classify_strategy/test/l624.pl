% L624: A California licence plate consists of a sequence of seven symbols: number, letter, letter, letter, number, number, number, where a letter is any one of 26 letters and a number is one among 0, 1, ..., 9.  Assume that all licence plates are equally likely.  What is the probability that all symbols are different? ## Solution= 10*9*8*7*26*25*24/(10^4*26^3)

group(1-35).
size(1-35, 26).

given(exactly(1, 1-35, v(1-35,0))).
given(exactly(1, 1-35, v(1-35,19))).
given(exactly(1, 1-35, v(1-35,16))).
given(exactly(1, 1-35, v(1-35,10))).
given(exactly(1, 1-35, v(1-35,11))).
given(exactly(1, 1-35, v(1-35,2))).
given(exactly(1, 1-35, v(1-35,20))).
given(exactly(1, 1-35, v(1-35,3))).
given(exactly(1, 1-35, v(1-35,5))).
given(exactly(1, 1-35, v(1-35,4))).
given(exactly(1, 1-35, v(1-35,21))).
given(exactly(1, 1-35, v(1-35,18))).
given(exactly(1, 1-35, v(1-35,22))).
given(exactly(1, 1-35, v(1-35,23))).
given(exactly(1, 1-35, v(1-35,25))).
given(exactly(1, 1-35, v(1-35,24))).
given(exactly(1, 1-35, v(1-35,15))).
given(exactly(1, 1-35, v(1-35,8))).
given(exactly(1, 1-35, v(1-35,13))).
given(exactly(1, 1-35, v(1-35,12))).
given(exactly(1, 1-35, v(1-35,9))).
given(exactly(1, 1-35, v(1-35,7))).
given(exactly(1, 1-35, v(1-35,14))).
given(exactly(1, 1-35, v(1-35,1))).
given(exactly(1, 1-35, v(1-35,6))).
given(exactly(1, 1-35, v(1-35,17))).
group(1-38).
size(1-38, 10).

given(exactly(1, 1-38, 9)).
given(exactly(1, 1-38, 0)).
given(exactly(1, 1-38, 1)).
given(exactly(1, 1-38, v(1-38,2))).
given(exactly(1, 1-38, v(1-38,4))).
given(exactly(1, 1-38, v(1-38,3))).
given(exactly(1, 1-38, v(1-38,0))).
given(exactly(1, 1-38, v(1-38,5))).
given(exactly(1, 1-38, v(1-38,1))).
given(exactly(1, 1-38, v(1-38,6))).

take_wr(1-38, 1-4-0, 4).
take_wr(1-35, 1-4-1, 3).
union(1-4, [1-4-0,1-4-1]).


probability(all_diff(1-4,outcome(0))).

property(outcome(1), [v(1-35,25), v(1-35,9), v(1-35,23), v(1-35,17), v(1-35,15), v(1-35,21), v(1-35,1), v(1-35,4), v(1-35,19), v(1-35,6), v(1-35,13), v(1-35,11), v(1-35,8), v(1-35,10), v(1-35,16), v(1-35,22), v(1-35,20), v(1-35,14), v(1-35,0), v(1-35,2), v(1-35,3), v(1-35,5), v(1-35,18), v(1-35,7), v(1-35,12), v(1-35,24)]).
property(outcome(0), [v(1-38,6), v(1-38,5), v(1-38,4), 1, 0, v(1-38,1), v(1-38,0), 9, v(1-38,3), v(1-38,2)]).

