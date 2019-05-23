% H881: In a certain county, 15 percent of patients suffering heart attacks are younger than 40, 20 percent are between 40 and 50, 30 percent are between 50 and 60, and 35 percent are above 60.  On a certain day, 10 unrelated patients suffering heart attacks are transferred to a county hospital.  If among them there is at least one patient younger than 40, what is the probability that there are two or more patients younger than 40? ## Solution= 0.56740836

group(1-9).

given(exactly(rel(35/100, 1-9), 1-9, above)).
given(exactly(rel(30/100, 1-9), 1-9, 50)).
given(exactly(rel(15/100, 1-9), 1-9, younger)).
given(exactly(rel(20/100, 1-9), 1-9, between)).

take(1-9, 2-8, 10).
observe(atleast(1, 2-8, younger)).

probability(atleast(2, 2-8, younger)).

property(age, [younger, 50, above, between]).

