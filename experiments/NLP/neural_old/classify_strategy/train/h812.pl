% H812: In an automated filling operation, the probability of an incorrect fill when the process is operated at a low speed is 0.001.  When the process is operated at a high speed, the probability of an incorrect fill is 0.01.  Assume that 30 percent of the containers are filled when the process is operated at a high speed and the remainder are filled when the process is operated at a low speed.  What is the probability of an incorrectly filled container? ## Solution= .0037

group(3-7).

given(exactly(rel(.01, 3-7, high), 3-7, and(high, incorrect))).
given(exactly(rel(30/100, 3-7), 3-7, high)).
given(exactly(u, 3-7, low)).
given(exactly(rel(.001, 3-7, low), 3-7, and(incorrect, low))).

take(3-7, 4-9, 1).

probability(all(4-9, incorrect)).

property(property, [incorrect]).
property(speed, [high, low]).

