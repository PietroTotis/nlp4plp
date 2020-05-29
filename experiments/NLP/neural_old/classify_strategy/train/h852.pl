% H852: In a technical college all students are required to take calculus and physics.  Statistics show that 32 percent of the students of this college get A 's in calculus, and 20 percent of them get A 's in both calculus and physics.  Gino, a randomly selected student of this college, has passed calculus with an A.  What is the probability that he got an A in physics? ## Solution= .625

group(1-6).

given(exactly(rel(20/100, 1-6), 1-6, and(calculus, physics))).
given(exactly(rel(32/100, 1-6), 1-6, calculus)).

take(1-6, 3-6, 1).
observe(all(3-6, calculus)).

probability(all(3-6, physics)).

property(a, [calculus]).
property(p, [physics]).

