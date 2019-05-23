% M932: A friend who works in a big city owns two cars, one small and one large.  Three-quarters of the time he drives the small car to work, and one-quarter of the time he drives the large car.  If he takes the small car, he usually has little trouble parking, and so is at work on time with probability 0.9.  If he takes the large car, he is at work on time with probability 0.6.  Given that he was on time on a particular morning, what is the probability that he drove the small car? ## Solution= 0.81818182

group(events).

given(exactly(rel(0.9, events, small), events, and(small, yes))).
given(exactly(rel(1/4, events), events, large)).
given(exactly(rel(3/4, events), events, small)).
given(exactly(rel(0.6, events, large), events, and(large, yes))).

take(events, 5-15, 1).
observe(all(5-15, yes)).

probability(all(5-15, small)).

property(punctual, [yes]).
property(car_driven, [small, large]).

