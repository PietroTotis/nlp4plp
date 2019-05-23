% L944: Of flights from Saskatoon to Winnipeg, 89.5 percent leave on time and arrive on time, 3.5 percent leave on time and arrive late, 1.5 percent leave late and arrive on time, and 5.5 percent leave late and arrive late.  What is the probability that, given a flight leaves on time, it will arrive late? ## Solution= 0.0376344086021505

group(1-2).

given(exactly(rel(0.055, 1-2), 1-2, and(late, leave_late))).
given(exactly(rel(0.015, 1-2), 1-2, and(leave_late, on_time))).
given(exactly(rel(0.895, 1-2), 1-2, and(leave_on_time, on_time))).
given(exactly(rel(0.035, 1-2), 1-2, and(late, leave_on_time))).

take(1-2, 2-9, 1).
observe(all(2-9, leave_on_time)).

probability(all(2-9, late)).

property(leave, [leave_on_time, leave_late]).
property(arrive, [late, on_time]).

