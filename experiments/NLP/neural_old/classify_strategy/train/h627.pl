% H627: Ten equally-qualified applicants, 6 men and 4 women, apply for 3 lab technician positions.  Unable to justify choosing any of the applicants over the others, the personnel director decides to select 3 at random.  What is the probability that one man and two women will be chosen? ## Solution= 3/10

group(1-3).
size(1-3, 10).

given(exactly(6, 1-3, man)).
given(exactly(4, 1-3, woman)).

take(1-3, 2-19, 3).

probability(and(exactly(1, 2-19, man), exactly(2, 2-19, woman))).

property(property, [woman, man]).

