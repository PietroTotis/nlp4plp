% L725: The probability that Sue will live on campus and buy a new car is 0.37.  If the probability that she will live on campus is 0.73, find the probability that she will buy a new car, given that she lives on campus. ## Solution= 37/73

group(probabilities).

given(exactly(rel(0.37, probabilities), probabilities, and(campus, car))).
given(exactly(rel(0.73, probabilities), probabilities, campus)).

take(probabilities, 2-15, 1).
observe(all(2-15, campus)).

probability(all(2-15, car)).

property(live, [campus]).
property(buy, [car]).

