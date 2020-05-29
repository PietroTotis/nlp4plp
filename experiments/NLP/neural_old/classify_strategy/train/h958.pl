% H958: A box contains 8 red, 3 white, and 9 blue balls.  Three balls are to be drawn, without replacement.  What is the probability that more blues than whites are drawn? ## Solution= 0.642105263157895

group(1-2).

given(exactly(9, 1-2, blue)).
given(exactly(3, 1-2, white)).
given(exactly(8, 1-2, red)).

take(1-2, 2-2, 3).

probability(or(and(exactly(3, 2-2, blue), less_than(3, 2-2, white)), or(and(exactly(2, 2-2, blue), less_than(2, 2-2, white)), and(exactly(1, 2-2, blue), less_than(1, 2-2, white))))).

property(property, [blue, white, red]).

