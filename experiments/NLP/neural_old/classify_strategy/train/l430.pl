% L430: A school survey found that 9 out of 10 students like pizza.  If three students are chosen at random with replacement, what is the probability that all three students like pizza? ## Solution= 729/1000

group(students).

given(exactly(rel(9/10, students), students, pizza)).

take_wr(students, 2-3, 3).

probability(all(2-3, pizza)).

property(property, [pizza]).

