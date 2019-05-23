% L827: An insurance company insured 2000 scooter drivers, 4000 car drivers and 6000 truck drivers.  The probability of accidents are 0.01, 0.03 and 0.15 respectively.  One of the insured persons meets with an accident.  What is the probability that he is a scooter driver? ## Solution= 1/52

group(drivers).

given(exactly(2000, drivers, scooter)).
given(exactly(rel(0.03, drivers, car), drivers, and(accident, car))).
given(exactly(rel(0.15, drivers, truck), drivers, and(accident, truck))).
given(exactly(rel(0.01, drivers, scooter), drivers, and(accident, scooter))).
given(exactly(6000, drivers, truck)).
given(exactly(4000, drivers, car)).

take(drivers, 3-1, 1).
observe(all(3-1, accident)).

probability(all(3-1, scooter)).

property(accidents, [accident]).
property(driver, [car, scooter, truck]).

