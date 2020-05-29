% L448: A jar contains four marbles: three red, one white.  Two marbles are drawn with replacement.  What is the probability the colors of the two marbles match? ## Solution= 0.625

group(1-2).

given(exactly(1, 1-2, white)).
given(exactly(3, 1-2, red)).

take_wr(1-2, 2-2, 2).

probability(all_same(2-2,color)).

property(color, [white, red]).

