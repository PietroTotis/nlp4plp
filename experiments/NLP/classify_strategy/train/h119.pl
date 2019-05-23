% H119: Dylan lives in Montana.  On a bus trip across the state he looks out the window and sees where other vehicles are from.  On the trip he sees 125 vehicles with Montana plates and 40 with non-Montana plates.  On the trip back the next day, what is the probability that the first car he sees is from Montana? ## Solution= 0.75757576

group(2-17).

given(exactly(40, 2-17, non-montana)).
given(exactly(125, 2-17, montana)).

take(2-17, 4-16, 1).

probability(all(4-16, montana)).

property(property, [non-montana, montana]).

