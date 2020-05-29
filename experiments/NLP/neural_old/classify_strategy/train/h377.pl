% H377: In a video game, each rocket has an 80 percent chance of hitting a target.  Three rockets are now fired at a target.  What is the probability that exactly two of the rockets will hit the target ## Solution= .384

group(1-7).

given(exactly(rel(80/100,1-7), 1-7, hit)).

take_wr(1-7, 2-5, 3).


probability(exactly(2, 2-5, hit)).

property(outcome(0), [hit]).

