% L701: Fifty-eight percent of American children are read to every day by someone at home.  Suppose 5 children are randomly selected.  What is the probability that at least one is read to every day by someone at home? ## Solution= 1-0.42^5

group(2-3).

given(exactly(rel(58/100,2-3), 2-3, read)).

take_wr(2-3, 2-6, 5).


probability(atleast(1, 2-6, read)).

property(property(0), [read]).

