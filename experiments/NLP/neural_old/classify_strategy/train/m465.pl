% M465: Out of the six balls given in a bag, three are given to be white.  Find the probability of not getting a white ball. ## Solution= 1/2

group(1-5).

given(exactly(rel(3/6,1-5), 1-5, white)).

take_wr(1-5, 2-6, 1).


probability(all(2-6, not(white))).

property(outcome(0), [white]).

