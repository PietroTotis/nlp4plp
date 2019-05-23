% H789: A sample preparation for a chemical measurement is completed correctly by 25 percent of the lab technicians, completed with a minor error by 70 percent, and completed with a major error by 5 percent.  If a technician is selected randomly to complete the preparation, what is the probability it is completed without error? ## Solution= .25

group(1-3).

given(exactly(rel(70/100, 1-3), 1-3, minor)).
given(exactly(rel(25/100, 1-3), 1-3, correctly)).
given(exactly(rel(5/100, 1-3), 1-3, major)).

take(1-3, 2-10, 1).

probability(all(2-10, correctly)).

property(property, [major, minor, correctly]).

