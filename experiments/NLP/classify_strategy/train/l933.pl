% L933: Of 65 students, 10 take neither math nor physics, 50 take math, and 40 take physics.  What is the probability that a student chosen at random from this group of 65 takes both math and physics? ## Solution= 0.538461538461538

group(1-3).
size(1-3, 65).

given(exactly(50, 1-3, math)).
given(exactly(40, 1-3, physics)).
given(exactly(10, 1-3, and(not_math, not_physics))).

take(1-3, 2-7, 1).

probability(and(all(2-7, math), all(2-7, physics))).

property(physics, [not_physics, physics]).
property(math, [not_math, math]).

