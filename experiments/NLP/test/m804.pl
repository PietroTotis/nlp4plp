% M804: A box contains three red, six white and four blue balls.  Two balls are drawn from the box at random without replacement.  What is the probability that neither ball is red? ## Solution= 0.576923076923077

group(1-2).

given(exactly(4, 1-2, blue)).
given(exactly(6, 1-2, white)).
given(exactly(3, 1-2, red)).

take(1-2, 2-2, 2).

probability(none(2-2, red)).

property(colour, [blue, white, red]).

