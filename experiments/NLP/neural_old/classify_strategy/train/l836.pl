% L836: A bag consists of 10 balls each marked with one of the digits 0 to 9.  If four balls are drawn successively with replacement from the bag, what is the probability that none is marked with the digit 0? ## Solution= 0.9^4

group(1-2).
size(1-2, 10).

given(exactly(1, 1-2, 9)).
given(exactly(1, 1-2, 0)).

take_wr(1-2, 2-3, 4).

probability(none(2-3, 0)).

property(property, [9, 0]).

