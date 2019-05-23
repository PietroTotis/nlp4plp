% L495: Three balls are randomly dropped into three boxes A, B and C, where any ball is equally likely to fall into each box.  Determine the probability that exactly one box will be empty. ## Solution= 2/3

group(1-2).
size(1-2, 3).

given(exactly(1, 1-2, a)).
given(exactly(1, 1-2, b)).
given(exactly(1, 1-2, c)).

take_wr(1-2, 1-5, 3).


probability(or(or(exactly(2, 1-5, a), exactly(2, 1-5, b)), exactly(2, 1-5, c))).

property(outcome(0), [a, c, b]).

