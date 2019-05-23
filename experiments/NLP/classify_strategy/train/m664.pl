% M664: In a college sociology class, there are 11 students aged 18-19, 18 aged 20-21, 2 aged 22-30 and 1 aged 31-40.  A student from the class is chosen randomly for a project.  Find the probability that the student is 18 to 21 years old. ## Solution= 29/32

group(1-5).

given(exactly(2, 1-5, 22-30)).
given(exactly(1, 1-5, 31-40)).
given(exactly(18, 1-5, 20-21)).
given(exactly(11, 1-5, 18-19)).

take(1-5, 2-2, 1).

probability(all(2-2, or(18-19, 20-21))).

property(age, [20-21, 18-19, 31-40, 22-30]).

