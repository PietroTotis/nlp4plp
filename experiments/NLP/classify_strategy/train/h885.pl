% H885: A polygraph operator detects innocent suspects as being guilty 3 percent of the time.  If during a crime investigation six innocent suspects are examined by the operator, what is the probability that at least one of them is detected as guilty? ## Solution= 0.167028

group(1-2).

given(exactly(rel(3/100,1-2), 1-2, guilty)).

take_wr(1-2, 2-8, 6).


probability(atleast(1, 2-8, guilty)).

property(outcome(0), [guilty]).

