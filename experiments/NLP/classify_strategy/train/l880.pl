% L880: What is the probability of getting a 70 percent or better on a 20 question multiple choice test with 4 choices each, randomly guessing? ## Solution= 2.95E-05

group(1-15).
size(1-15, 4).

given(exactly(1, 1-15, v(1-15,2))).
given(exactly(1, 1-15, v(1-15,0))).
given(exactly(1, 1-15, v(1-15,1))).
given(exactly(1, 1-15, choice)).

take_wr(1-15, 1-25, 20).


probability(atleast(14, 1-25, choice)).

property(outcome(0), [v(1-15,2), v(1-15,1), v(1-15,0), choice]).

