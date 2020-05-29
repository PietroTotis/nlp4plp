% L482: Four out of 10 new cars are both foreign and need repair within 2 years.  It is known that 7 out of 12 new cars are foreign.  Calculate the probability of a new foreign car needing repair within 2 years. ## Solution= 24/35

group(cars).

given(exactly(rel(4/10, cars), cars, and(foreign, repair))).
given(exactly(rel(7/12, cars), cars, foreign)).

take(cars, 3-8, 1).
observe(all(3-8, foreign)).

probability(all(3-8, repair)).

property(origin, [foreign]).
property(state, [repair]).

