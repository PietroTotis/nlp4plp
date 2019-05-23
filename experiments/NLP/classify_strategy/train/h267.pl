% H267: Given that 2 percent of the fuses manufactured by a firm are defective.  Find the probability that a box containing 60 fuses has 3 or more defective fuses. ## Solution= .762

group(1-7).

given(exactly(rel(2/100,1-7), 1-7, defective)).

take_wr(1-7, 2-6, 60).


probability(atleast(3, 2-6, defective)).

property(outcome(0), [defective]).

