% L654: In a hospital unit there are 8 nurses and 5 physicians ; 7 nurses and 3 physicians are females.  If a staff person is selected, find the probability that the subject is a nurse or a male. ## Solution= 10/13

group(1-4).

given(exactly(5, 1-4, physician)).
given(exactly(7, 1-4, and(female, nurse))).
given(exactly(3, 1-4, and(female, physician))).
given(exactly(8, 1-4, nurse)).

take(1-4, 2-4, 1).

probability(all(2-4, or(nurse, not(female)))).

property(gender, [male, female]).
property(job, [physician, nurse]).

