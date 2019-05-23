% M87: A speaks truth in 75 percent of cases and B in 80 percent of cases.  In what percentage of cases are they likely to contradict each other, narrating the same incident? ## Solution= 35/100

group(1-1).

given(exactly(rel(75/100,1-1), 1-1, truth)).
group(1-10).

given(exactly(rel(80/100,1-10), 1-10, truth)).

take_wr(1-10, 2-10-0, 1).
take_wr(1-1, 2-10-1, 1).
union(2-10, [2-10-0,2-10-1]).


probability(all_diff(2-10,outcome(0))).

property(outcome(0), [truth]).

