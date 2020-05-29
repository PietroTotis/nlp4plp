% H664: Hydraulic assemblies for landing gear produced by an aircraft rework facility are inspected for defects.  History shows that 10 percent have defects in the shafts, 8 percent have defects in the bushings, and 2 percent have defects in both the shafts and the bushings.  If one such assembly is randomly chosen, find the probability that it has only a bushing defect. ## Solution= 0.06

group(1-2).

given(exactly(rel(10/100, 1-2), 1-2, shaft)).
given(exactly(rel(2/100, 1-2), 1-2, and(bushing, shaft))).
given(exactly(rel(8/100, 1-2), 1-2, bushing)).

take(1-2, 3-4, 1).

probability(all(3-4, and(bushing, not(shaft)))).

property(shaft, [shaft]).
property(bushing, [bushing]).

