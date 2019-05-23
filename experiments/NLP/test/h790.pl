% H790: A sample preparation for a chemical measurement is completed correctly by 25 percent of the lab technicians, completed with a minor error by 70 percent, and completed with a major error by 5 percent.  What is the probability that it is completed with either a minor or a major error? ## Solution= .75

group(1-3).

given(exactly(rel(70/100, 1-3), 1-3, minor)).
given(exactly(rel(25/100, 1-3), 1-3, correctly)).
given(exactly(rel(5/100, 1-3), 1-3, major)).

take(1-3, 2-6, 1).

probability(all(2-6, or(minor, major))).

property(property, [major, correctly, minor]).

