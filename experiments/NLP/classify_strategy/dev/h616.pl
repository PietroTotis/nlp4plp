% H616: John speaks the truth 3 out of 4 times.  Peter speaks the truth 5 out of 6 times.  What is the probability that they will contradict each other in stating the same fact? ## Solution= 1/3

group(1-1).

given(exactly(rel(3/4,1-1), 1-1, truth)).
group(2-1).

given(exactly(rel(5/6,2-1), 2-1, truth)).

take_wr(1-1, 3-6-0, 1).
take_wr(2-1, 3-6-1, 1).
union(3-6, [3-6-0,3-6-1]).


probability(all_diff(3-6,outcome(0))).

property(outcome(0), [truth]).

