% M312: Suppose that 39 percent of a town 's population have type O blood, 15 percent are Rh-negative, and 7 percent have type O blood and are Rh-negative.  What is the probability that a randomly selected individual in the town will neither have type O blood nor be Rh-negative? ## Solution= 0.53

group(1-9).

given(exactly(rel(39/100, 1-9), 1-9, o)).
given(exactly(rel(15/100, 1-9), 1-9, negative)).
given(exactly(rel(7/100, 1-9), 1-9, and(negative, o))).

take(1-9, 2-9, 1).

probability(all(2-9, and(not(o), not(negative)))).

property(rh, [negative]).
property(blood_type, [o]).

