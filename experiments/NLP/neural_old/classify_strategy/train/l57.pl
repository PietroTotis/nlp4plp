% L57: In a group of 40 people, 10 are healthy and every person the of the remaining 30 has either high blood pressure, a high level of cholesterol or both.  If 15 have high blood pressure and 25 have high level of cholesterol.  If a person is selected randomly from this group, what is the probability that he/she has high blood pressure? ## Solution= 0.375

group(1-3).
size(1-3, 40).

given(exactly(25, 1-3, cholesterol)).
given(exactly(10, 1-3, and(not_cholesterol, not_pressure))).
given(exactly(15, 1-3, pressure)).

take(1-3, 3-3, 1).

probability(all(3-3, pressure)).

property(pressure, [pressure, not_pressure]).
property(cholesterol, [not_cholesterol, cholesterol]).

