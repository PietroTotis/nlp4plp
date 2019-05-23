% L540: A class in advanced physics is comprised of 10 juniors, 30 seniors, and 10 graduate students.  The final grades show that 3 of the juniors, 10 of the seniors, and 5 of the graduate students received an A for the course.  If a student is chosen at random from this class and is found to have earned an A, what is the probability that he or she is a senior? ## Solution= 5/9

group(1-2).

given(exactly(3, 1-2, and(a, junior))).
given(exactly(5, 1-2, and(a, student))).
given(exactly(10, 1-2, student)).
given(exactly(10, 1-2, junior)).
given(exactly(30, 1-2, senior)).
given(exactly(10, 1-2, and(a, senior))).

take(1-2, 3-3, 1).
observe(all(3-3, a)).

probability(all(3-3, senior)).

property(grade, [a]).
property(level, [senior, junior, student]).

