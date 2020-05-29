% M902: In a file, there are 4 science papers, 6 English papers, and 5 history papers.  If you select two papers at random, what is the probability of getting a science then an English paper from the file without replacing the first paper? ## Solution= 0.114285714285714

group(1-3).

group(rest(2-16)).

given(exactly(5, 1-3, history)).
given(exactly(6, 1-3, english)).
given(exactly(4, 1-3, science)).

take(1-3, 2-16, 1).
take(rest(2-16), 2-20, 1).

probability(and(all(2-16, science), all(2-20, english))).

property(subject, [science, english, history]).

