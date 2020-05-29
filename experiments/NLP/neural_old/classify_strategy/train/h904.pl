% H904: A satellite can fail for many possible reasons, two of which are computer failure and engine failure.  For a given mission, it is known that: The probability of engine failure is 0.008.  The probability of computer failure is 0.001.  Given engine failure, the probability of satellite failure is 0.98.  Given computer failure, the probability of satellite failure is 0.45.  Given any other component failure, the probability of satellite failure is zero.  Determine the probability that a satellite fails and is due to engine failure. ## Solution= .00784

group(1-2).

given(exactly(rel(0/1, 1-2, component), 1-2, and(component, satellite))).
given(exactly(rel(.98, 1-2, engine), 1-2, and(engine, satellite))).
given(exactly(rel(.008, 1-2), 1-2, engine)).
given(exactly(u, 1-2, component)).
given(exactly(rel(.001, 1-2), 1-2, computer)).
given(exactly(rel(.45, 1-2, computer), 1-2, and(computer, satellite))).

take(1-2, 7-6, 1).

probability(all(7-6, and(engine, satellite))).

property(failure, [engine, computer, component]).
property(disaster, [satellite]).

