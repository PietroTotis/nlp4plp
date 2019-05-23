% H466: Five percent of the units of a certain type of equipment brought in for service have a common defect.  Experience shows that 93 percent of the units with this defect exhibit a certain behavioral characteristic, while only two percent of the units which do not have this defect exhibit that characteristic.  A unit is examined and found to have the characteristic symptom.  What is the conditional probability that the unit has the defect, given this behavior? ## Solution= 93/131

group(1-5).

given(exactly(rel(5/100, 1-5), 1-5, defect)).
given(exactly(rel(2/100, 1-5, not), 1-5, and(characteristic, not))).
given(exactly(rel(93/100, 1-5, defect), 1-5, and(characteristic, defect))).
given(exactly(u, 1-5, not)).

take(1-5, 3-2, 1).
observe(all(3-2, characteristic)).

probability(all(3-2, defect)).

property(exhibit, [characteristic]).
property(defect, [not, defect]).

