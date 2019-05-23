% L1006: The completion of a highway construction may be delayed because of a projected storm.  The probabilities are 0.60 that there will be a storm, 0.85 that the construction job will be completed on time if there is no storm, and 0.35 that the construction will be completed on time if there is a storm.  What is the probability that the construction job will be completed on time? ## Solution= 0.55

group(weather).

given(exactly(rel(0.35, weather, storm), weather, and(storm, time))).
given(exactly(rel(0.4, weather), weather, no)).
given(exactly(rel(0.85, weather, no), weather, and(no, time))).
given(exactly(rel(0.6, weather), weather, storm)).

take(weather, 3-4, 1).

probability(all(3-4, time)).

property(storm, [storm, no]).
property(time, [time]).

