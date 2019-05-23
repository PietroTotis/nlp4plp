% M234: At a car park there are 100 vehicles, 60 of which are cars, 30 are vans and the remainder are lorries.  If every vehicle is equally likely to leave, what is the probability of the car leaving second if either a lorry or van had left first? ## Solution= 20/33

group(1-4).
size(1-4, 100).

given(exactly(60, 1-4, car)).
given(exactly(30, 1-4, van)).
given(exactly(10, 1-4, lorry)).

take(1-4, 2-16, 2).
observe(or(nth(1, 2-16, lorry), nth(1, 2-16, van))).

probability(nth(2, 2-16, car)).

property(vehicle, [car, van, lorry]).

