% H304: In Rwanda, the chance for rain on any given day is 50 percent.  What is the probability that it rains on 4 out of 7 consecutive days in Rwanda? ## Solution= 35/128

group(1-7).
size(1-7, 2).

given(exactly(1, 1-7, v(1-7,0))).
given(exactly(1, 1-7, rain)).

take_wr(1-7, 2-14, 7).


probability(exactly(4, 2-14, rain)).

property(outcome(0), [v(1-7,0), rain]).

