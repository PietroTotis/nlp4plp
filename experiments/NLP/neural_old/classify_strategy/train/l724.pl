% L724: A manufacturer makes three models of a television set, models A, B, and C.  A store sells 40 percent of model A sets, 40 percent of model B sets, and 20 percent of model C sets.  Of model A sets, 3 percent have stereo sound ; of model B sets, 7 percent have stereo sound ; and of model C sets, 9 percent have stereo sound.  If a set is sold at random, find the probability that it has stereo sound. ## Solution= 0.058

group(2-2).

given(exactly(rel(40/100, 2-2), 2-2, a)).
given(exactly(rel(3/100, 2-2, a), 2-2, and(a, sound))).
given(exactly(rel(7/100, 2-2, b), 2-2, and(b, sound))).
given(exactly(rel(40/100, 2-2), 2-2, b)).
given(exactly(rel(20/100, 2-2), 2-2, c)).
given(exactly(rel(9/100, 2-2, c), 2-2, and(c, sound))).

take(2-2, 4-3, 1).

probability(all(4-3, sound)).

property(sound, [sound]).
property(model, [a, c, b]).

