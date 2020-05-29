% M107: 26 customers are eating dinner at a local diner.  Of the 26 customers, 20 order coffee, 8 order pie, and 7 order coffee and pie.  Using this information, what is the probability that a customer orders coffee or pie? ## Solution= 21/26

group(1-2).
size(1-2, 26).

given(exactly(20, 1-2, coffee)).
given(exactly(7, 1-2, and(coffee, pie))).
given(exactly(8, 1-2, pie)).

take(1-2, 3-11, 1).

probability(all(3-11, or(coffee, pie))).

property(coffee, [coffee]).
property(pie, [pie]).

