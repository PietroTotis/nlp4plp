% H301: On one side of a coin there is the number 0 and on the other side the number 1.  What is the probability that the sum of three coin tosses will be 2? ## Solution= 3/8

group(1-6).
size(1-6, 2).

given(exactly(1, 1-6, 1)).
given(exactly(1, 1-6, 0)).

take_wr(1-6, 2-11, 3).


probability(aggcmp(2-11,outcome(0),sum,=:=,2)).

property(outcome(0), [1, 0]).

