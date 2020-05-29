% L472: A bag contains a large number of balls coloured red, green or blue.  If the probability of choosing a red ball from the bag is 0.425 and the probability of choosing a blue ball from the bag is 0.35, what is the probability of choosing either a red or a blue ball from the bag? ## Solution= 0.775

group(2-40).

given(exactly(rel(0.425,2-40), 2-40, red)).
given(exactly(rel(0.35,2-40), 2-40, blue)).

take_wr(2-40, 2-33, 1).


probability(all(2-33, or(red, blue))).

property(outcome(0), [blue, red]).

