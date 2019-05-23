% L622: We have 14 rooms and 4 colors, white, blue, green, and yellow.  Each room is painted at random with one of the four colors.  What is the probability of 5 white, 4 blue, 3 green and 2 yellow rooms? ## Solution= 2522520/4^14

group(2-2).
size(2-2, 4).

given(exactly(1, 2-2, blue)).
given(exactly(1, 2-2, yellow)).
given(exactly(1, 2-2, green)).
given(exactly(1, 2-2, white)).

take_wr(2-2, 2-4, 14).


probability(and(and(exactly(5, 2-4, white), exactly(4, 2-4, blue)), and(exactly(3, 2-4, green), exactly(2, 2-4, yellow)))).

property(outcome(0), [blue, white, green, yellow]).

