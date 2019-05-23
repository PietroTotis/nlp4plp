% H807: A new analytical method to detect pollutants in water is being tested.  This new method of chemical analysis is important because, if adopted, it could be used to detect three different contaminants - organic pollutants, volatile solvents, and chlorinated compounds - instead of having to use a single test for each pollutant.  The makers of the test claim that it can detect high levels of organic pollutants with 99.7 percent accuracy, volatile solvents with 99.95 percent accuracy, and chlorinated compounds with 89.7 percent accuracy.  If a pollutant is not present, the test does not signal.  Samples are prepared for the calibration of the test and 60 percent of them are contaminated with organic pollutants, 27 percent with volatile solvents, and 13 percent with traces of chlorinated compounds.  What is the probability that the test will signal? ## Solution= 0.984675

group(5-1).

given(exactly(rel(99.95/100, 5-1, volatile), 5-1, and(accuracy, volatile))).
given(exactly(rel(13/100, 5-1), 5-1, chlorinate)).
given(exactly(rel(60/100, 5-1), 5-1, organic)).
given(exactly(rel(89.7/100, 5-1, chlorinate), 5-1, and(accuracy, chlorinate))).
given(exactly(rel(27/100, 5-1), 5-1, volatile)).
given(exactly(rel(99.7/100, 5-1, organic), 5-1, and(accuracy, organic))).

take(5-1, 6-7, 1).

probability(all(6-7, accuracy)).

property(property, [accuracy]).
property(pollutants, [chlorinate, volatile, organic]).

