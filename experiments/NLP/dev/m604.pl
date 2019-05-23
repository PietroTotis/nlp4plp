% M604: Two coloured spinners, each with 4 coloured regions - red, blue, green & yellow - are spun one after the other.  What is the probability of the arrows landing on two different colours? ## Solution= 0.75

group(1-3).
size(1-3, 4).

given(exactly(1, 1-3, blue)).
given(exactly(1, 1-3, red)).
given(exactly(1, 1-3, green)).
given(exactly(1, 1-3, yellow)).

take_wr(1-3, 1-20, 2).


probability(all_diff(1-20,outcome(0))).

property(outcome(0), [blue, green, yellow, red]).

