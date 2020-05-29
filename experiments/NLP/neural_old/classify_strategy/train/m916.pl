% M916: In a file, there are 11 chemistry papers, 9 Hindi papers, and 6 Civics papers.  If you select two papers at random, what is the probability of getting a Hindi then a Civics paper from the file without replacing the first paper? ## Solution= 0.08307692308

group(1-3).

given(exactly(6, 1-3, civics)).
given(exactly(9, 1-3, hindi)).
given(exactly(11, 1-3, chemistry)).

take(1-3, 2-5, 2).

probability(and(nth(1, 2-5, hindi), nth(2, 2-5, civics))).

property(subject, [chemistry, hindi, civics]).

