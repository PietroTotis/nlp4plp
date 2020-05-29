% L615: A committee of 5 is to be selected from a group of 6 men and 9 women.  If the selection is made randomly, what is the probability that the committee consists of 3 men and 2 women? ## Solution= 240/1001

group(1-11).

given(exactly(6, 1-11, man)).
given(exactly(9, 1-11, woman)).

take(1-11, 1-2, 5).

probability(and(exactly(3, 1-2, man), exactly(2, 1-2, woman))).

property(property, [woman, man]).

