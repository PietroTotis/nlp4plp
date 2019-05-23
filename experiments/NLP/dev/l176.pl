% L176: Hydraulic landing assemblies coming from an aircraft rework facility are each inspected for defects.  Historical records indicate that 8 percent have defects in shafts only, 6 percent have defects in bushings only, and 2 percent have defects in both shafts and bushings.  One of the hydraulic assemblies is selected randomly.  What is the probability that the assembly has a bushing defect? ## Solution= 0.08

group(1-3).

given(exactly(rel(6/100, 1-3), 1-3, and(bushing, not_shaft))).
given(exactly(rel(2/100, 1-3), 1-3, and(bushing, shaft))).
given(exactly(rel(8/100, 1-3), 1-3, and(not_bushing, shaft))).

take(1-3, 3-1, 1).

probability(all(3-1, bushing)).

property(shaft, [shaft, not_shaft]).
property(bushing, [bushing, not_bushing]).

