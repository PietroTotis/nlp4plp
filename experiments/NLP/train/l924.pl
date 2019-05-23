% L924: A large department store has 500 employees.  There are 350 females and 200 of them are under the age of 25.  There are 75 males under 25.  If an employee is selected for promotion, find the probability that the employee will be over 24 and female. ## Solution= 150/500

group(1-7).
size(1-7, 500).

given(exactly(200, 1-7, and(25, female))).
given(exactly(75, 1-7, and(25, male))).
given(exactly(350, 1-7, female)).

take(1-7, 4-3, 1).

probability(and(none(4-3, 25), all(4-3, female))).

property(gender, [male, female]).
property(age, [25]).

