% H697: A geological study indicates that an exploratory oil well drilled in a certain region should strike oil with probability 0.25.  Find the probability that the first strike of oil comes after drilling three dry wells. ## Solution= 0.10546875

group(1-9).

given(exactly(rel(0.25,1-9), 1-9, strike)).

take_wr(1-9, 2-15, 4).


probability(and(nth(1, 2-15, not(strike)), and(nth(2, 2-15, not(strike)), and(nth(3, 2-15, not(strike)), nth(4, 2-15, strike))))).

property(outcome(0), [strike]).

