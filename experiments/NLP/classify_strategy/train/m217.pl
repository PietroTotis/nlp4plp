% M217: A university class has 18 students enrolled, 6 of whom are graduate students.  What is the probability that a randomly chosen student will be a graduate student? ## Solution= 1/3

group(1-6).
size(1-6, 18).

given(exactly(6, 1-6, graduate)).

take(1-6, 2-9, 1).

probability(all(2-9, graduate)).

property(property, [graduate]).

