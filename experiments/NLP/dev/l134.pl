% L134:  Hazel thinks she may be allergic to eating peanuts, and takes a test that gives the following results: For people that really do have the allergy, the test says `` Yes '' 90 percent of the time.  For people that do not have the allergy, the test says `` Yes '' 5 percent of the time `` false positive '' If 1.3 percent of the population have the allergy, and Hazel 's test says `` Yes '', what are the chances that Hazel really does have the allergy? ## Solution= 0.19164619

group(2-30).

given(exactly(rel(5/100, 2-30, not), 2-30, and(not, yes))).
given(exactly(rel(0.987, 2-30), 2-30, not)).
given(exactly(rel(0.013, 2-30), 2-30, do)).
given(exactly(rel(90/100, 2-30, do), 2-30, and(do, yes))).

take(2-30, 2-38, 1).
observe(all(2-38, yes)).

probability(all(2-38, do)).

property(allergy, [not, do]).
property(prediction, [yes]).

