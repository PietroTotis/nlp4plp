% L129:  Jack wakes up late on average 3 days in every 5.  If Jack wakes up late, the probability he 's late for school is 9/10.  If Jack does not wake up late, the probability he 's late for school is 3/10.  On what percent of days does Jack get to school on time? ## Solution= 0.34

group(days).

given(exactly(rel(3/5, days), days, late_wake)).
given(exactly(rel(9/10, days, late_wake), days, and(late_wake, late_school))).
given(exactly(rel(3/10, days, not(late_wake)), days, and(not(late_wake), late_school))).

take(days, 4-10, 1).

probability(all(4-10, not(late_school))).

property(wakeup, [late_wake]).
property(time, [late_school]).
