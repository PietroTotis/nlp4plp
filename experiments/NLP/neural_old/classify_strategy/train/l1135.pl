% L1135: At a particular company 64 percent of the employees are forty years old or over.  Of those employees, 83 percent are enrolled in the company 's retirement plan.  Only 61 percent of the employees under forty years old are enrolled in the plan.  Find the probability that a randomly selected employee is enrolled in the company 's retirement plan. ## Solution= 0.7508

group(1-9).

given(exactly(rel(64/100, 1-9), 1-9, old)).
given(exactly(rel(61/100, 1-9, under), 1-9, and(plan, under))).
given(exactly(u, 1-9, under)).
given(exactly(rel(83/100, 1-9, old), 1-9, and(old, plan))).

take(1-9, 4-8, 1).

probability(all(4-8, plan)).

property(age, [old, under]).
property(plan, [plan]).

