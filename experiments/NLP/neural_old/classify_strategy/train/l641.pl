% L641: In a college class of 250 graduating seniors, 50 have jobs waiting, 10 are going to medical school, 20 are going to law school, and 80 are going to various other kinds of graduate schools.  Select one graduate at random.  What is the probability that the student is going to medical school? ## Solution= 1/25

group(1-4).
size(1-4, 250).

given(exactly(50, 1-4, job)).
given(exactly(80, 1-4, other)).
given(exactly(10, 1-4, medical)).
given(exactly(20, 1-4, law)).

take(1-4, 2-3, 1).

probability(all(2-3, medical)).

property(property, [job, medical, law, other]).

