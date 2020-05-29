% H959: A marksman, whose probability of hitting a moving target is 0.6, fires three shots.  Suppose the shots are independent.  What is the probability the target is hit? ## Solution= 0.936

group(1-16).

given(exactly(rel(.6,1-16), 1-16, hit)).

take_wr(1-16, 1-2, 3).


probability(atleast(1, 1-2, hit)).

property(outcome(0), [hit]).

