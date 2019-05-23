% H379: Chen 's math teacher gives homework four out of every five school days.  Her science teacher gives homework three out of every four school days.  What is the probability that on a particular school day Chen does not have homework in either subject? ## Solution= 1/20

group(2-2).

given(exactly(rel(3/4,2-2), 2-2, homework)).
group(1-3).

given(exactly(rel(4/5,1-3), 1-3, homework)).

take_wr(1-3, 3-9-0, 1).
take_wr(2-2, 3-9-1, 1).
union(3-9, [3-9-0,3-9-1]).


probability(all(3-9, not(homework))).

property(outcome(0), [homework]).

