% L731: In an office there are 3 secretaries, 4 accountants, and 2 receptionists.  If a committee of 3 is to be formed, find the probability that one of each will be selected. ## Solution= 2/7

group(1-3).

given(exactly(3, 1-3, secretary)).
given(exactly(2, 1-3, receptionist)).
given(exactly(4, 1-3, accountant)).

take(1-3, 2-3, 3).

probability(and(exactly(1, 2-3, secretary), and(exactly(1, 2-3, accountant), exactly(1, 2-3, receptionist)))).

property(property, [accountant, receptionist, secretary]).

