% L395: A faculty leader was meeting two students in Paris, one arriving by train from Amsterdam and the other arriving from Brussels at approximately the same time.  Let A and B be the events that the trains are on time, respectively.  If the probability of A is 0.93, the probability of B is 0.89 and the probability of A and B is 0.87, then find the probability that at least one train is on time. ## Solution= 0.95

group(probabilities).

given(exactly(rel(0.89, probabilities), probabilities, b)).
given(exactly(rel(0.87, probabilities), probabilities, and(a, b))).
given(exactly(rel(0.93, probabilities), probabilities, a)).

take(probabilities, 3-28, 1).

probability(all(3-28, or(a, b))).

property(a, [a]).
property(b, [b]).

