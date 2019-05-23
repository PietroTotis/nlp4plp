% H813: In an automated filling operation, the probability of an incorrect fill when the process is operated at a low speed is 0.001.  When the process is operated at a high speed, the probability of an incorrect fill is 0.01.  Assume that 30 percent of the containers are filled when the process is operated at a high speed and the remainder are filled when the process is operated at a low speed.  If an incorrectly filled container is found, what is the probability that it was filled during the high-speed operation? ## Solution= 0.81081081

group(3-7).

given(exactly(rel(.01, 3-7, high), 3-7, and(high, incorrect))).
given(exactly(rel(30/100, 3-7), 3-7, high)).
given(exactly(u, 3-7, low)).
given(exactly(rel(.001, 3-7, low), 3-7, and(incorrect, low))).

take(3-7, 4-5, 1).
observe(all(4-5, incorrect)).

probability(all(4-5, high)).

property(property, [incorrect]).
property(speed, [high, low]).

