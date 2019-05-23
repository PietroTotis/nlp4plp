% H897: Two balls are selected sequentially, without replacement, from an urn containing three red, four white, and five blue balls.  What is the probability of selecting a white ball on the second draw if the first ball is replaced before the second is selected? ## Solution= 4/12

group(1-12).

given(exactly(3, 1-12, red)).
given(exactly(5, 1-12, blue)).
given(exactly(4, 1-12, white)).

take_wr(1-12, 1-2, 2).

probability(nth(2, 1-2, white)).

property(property, [blue, white, red]).

