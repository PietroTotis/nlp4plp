% H970: A test is conducted to determine the concentration of a chemical in a lawn weed killer, which will effectively kill dandelions.  It is found that a given concentration of the chemical will kill on average 80 percent of the dandelions in 24 hours.  A test is performed on 20 dandelions.  Find the probability that at least 10 are killed in 24 hours. ## Solution= 0.99943659

group(2-19).

given(exactly(rel(80/100,2-19), 2-19, kill)).

take_wr(2-19, 3-2, 20).


probability(atleast(10, 3-2, kill)).

property(outcome(0), [kill]).

