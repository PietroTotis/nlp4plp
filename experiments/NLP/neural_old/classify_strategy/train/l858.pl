% L858: A set of traffic lights shows green for 45 seconds, amber for 5 seconds and red for 30 seconds.  When approaching this set of lights, what is the probability that it will be showing green? ## Solution= 0.5625

group(2-6).

given(exactly(rel(5/80,2-6), 2-6, amber)).
given(exactly(rel(45/80,2-6), 2-6, green)).
given(exactly(rel(30/80,2-6), 2-6, red)).

take_wr(2-6, 2-2, 1).


probability(all(2-2, green)).

property(outcome(0), [amber, green, red]).

