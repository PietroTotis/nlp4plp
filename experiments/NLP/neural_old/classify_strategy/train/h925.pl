% H925: A manufacturer of pickup trucks is required to recall all the trucks manufactured in a given year for the repair of possible defects in the steering column and defects in the brake linings.  Dealers have been notified that 3 percent of the trucks have defective steering only, and that 6 percent of the trucks have defective brake linings only.  If 87 percent of the trucks have neither defect, what percentage of the trucks have both defects? ## Solution= 0.04

group(1-5).

given(exactly(rel(6/100, 1-5), 1-5, and(brake, steer_ok))).
given(exactly(rel(87/100, 1-5), 1-5, and(brake_ok, steer_ok))).
given(exactly(rel(3/100, 1-5), 1-5, and(brake_ok, steer))).

take(1-5, 3-12, 1).

probability(and(all(3-12, steer), all(3-12, brake))).

property(brake, [brake_ok, brake]).
property(steer, [steer_ok, steer]).

