% L720: A Gallup Poll found that 78 percent of Americans worry about the quality and healthfulness of their diet.  If 5 people are selected at random, find the probability that all 5 worry about the quality and healthfulness of their diet. ## Solution= 0.78^5

group(2-3).

given(exactly(rel(78/100,2-3), 2-3, worry)).

take_wr(2-3, 2-5, 5).


probability(all(2-5, worry)).

property(outcome(0), [worry]).

