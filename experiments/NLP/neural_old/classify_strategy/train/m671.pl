% M671: Three people have been nominated for president of a college class.  From a small poll, it is estimated that the probability of Jane winning the election is 0.46, and the probability of Larry winning the election is 0.32.  What is the probability of the third candidate winning the election? ## Solution= 0.21999999999999997

group(1-2).

given(exactly(rel(0.46,1-2), 1-2, jane)).
given(exactly(rel(0.32,1-2), 1-2, larry)).
given(exactly(u, 1-2, third)).

take_wr(1-2, 1-5, 1).


probability(all(1-5, third)).

property(outcome(0), [jane, larry, third]).

