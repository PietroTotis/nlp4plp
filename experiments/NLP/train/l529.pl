% L529: An automobile manufacturer is concerned about a possible recall of its best-selling four-door sedan.  If there were a recall, there is 0.25 probability that a defect is in the brake system, 0.18 in the transmission, 0.17 in the fuel system, and 0.40 in some other area.  What is the probability that there are no defects in either the brakes or the fueling system? ## Solution= 0.58

group(1-14).

given(exactly(rel(0.17,1-14), 1-14, fuel)).
given(exactly(rel(0.18,1-14), 1-14, transmission)).
given(exactly(rel(0.25,1-14), 1-14, brake)).
given(exactly(rel(0.40,1-14), 1-14, other)).

take_wr(1-14, 1-9, 1).


probability(all(1-9, and(not(brake), not(fuel)))).

property(outcome(0), [transmission, fuel, other, brake]).

