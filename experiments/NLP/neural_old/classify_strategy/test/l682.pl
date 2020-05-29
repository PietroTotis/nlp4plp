% L682: he Gallup Poll reported that 52 percent of Americans used a seat belt the last time they got into a car.  If four people are selected at random, find the probability that they all used a seat belt the last time they got into a car. ## Solution= 0.52^4

group(2-3).

given(exactly(rel(52/100,2-3), 2-3, use)).

take_wr(2-3, 2-5, 4).


probability(all(2-5, use)).

property(outcome(0), [use]).

