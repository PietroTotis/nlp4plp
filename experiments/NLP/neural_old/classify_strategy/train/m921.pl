% M921: In a file, there are 7 science papers, 9 English papers, and 8 history papers.  If you select two papers at random, what is the probability of getting a science then a history paper from the file without replacing the first paper? ## Solution= 0.1014492754

group(1-3).

given(exactly(8, 1-3, history)).
given(exactly(9, 1-3, english)).
given(exactly(7, 1-3, science)).

take(1-3, 2-5, 2).

probability(and(nth(1, 2-5, science), nth(2, 2-5, history))).

property(subject, [science, english, history]).

