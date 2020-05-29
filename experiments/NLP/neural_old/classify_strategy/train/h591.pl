% H591: Steel rods are manufactured to be 4 cm in diameter but they are acceptable if they are between 3.98 cm and 4.02 cm.  The manufacturer find that in the long run 3 percent are rejected as oversized and 3 percent are undersized.  A random sample of 10 rods is selected randomly from the population.  What is the probability that it contains not more than one which has to be rejected. ## Solution= 0.882412

group(2-12).

given(exactly(rel(6/100,2-12), 2-12, reject)).

take_wr(2-12, 3-6, 10).


probability(atmost(1, 3-6, reject)).

property(outcome(0), [reject]).

