% H124: Suppose the Braves beat the Phillies in every game with probability 3/5.  What is the probability that in five particular games in a row, the Braves win exactly 3 games? ## Solution= 216/625

group(1-9).

given(exactly(rel(3/5,1-9), 1-9, beat)).

take_wr(1-9, 2-9, 5).


probability(exactly(3, 2-9, beat)).

property(outcome(0), [beat]).

