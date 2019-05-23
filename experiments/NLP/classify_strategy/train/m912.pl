% M912: In a file, there are 5 math 's papers, 8 biology papers, and 7 economics papers.  If you select two papers at random, what is the probability of getting a biology, then an economics paper from the file without replacing the first paper? ## Solution= 0.1473684211

group(1-3).

given(exactly(5, 1-3, math)).
given(exactly(7, 1-3, economics)).
given(exactly(8, 1-3, biology)).

take(1-3, 2-5, 2).

probability(and(nth(1, 2-5, biology), nth(2, 2-5, economics))).

property(subject, [biology, economics, math]).

