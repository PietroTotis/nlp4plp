% M232: At a car park there are 100 vehicles, 60 of which are cars, 30 are vans and the remainder are lorries.  If every vehicle is equally likely to leave, what is the probability of the van leaving first? ## Solution= 3/10

group(1-4).
size(1-4, 100).

given(exactly(60, 1-4, car)).
given(exactly(30, 1-4, van)).
given(exactly(10, 1-4, lorry)).

take(1-4, 2-16, 1).

probability(all(2-16, van)).

property(vehicle, [car, van, lorry]).

