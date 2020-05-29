% L601: Suppose that a person chooses a letter at random from R E S E R V E and then chooses one at random from V E R T I C A L.  What is the probability that the same letter is chosen? ## Solution= 3/28

group(1-21).
size(1-21, 8).

given(exactly(1, 1-21, r)).
given(exactly(1, 1-21, e)).
given(exactly(1, 1-21, c)).
given(exactly(1, 1-21, v)).
given(exactly(1, 1-21, i)).
given(exactly(1, 1-21, t)).
given(exactly(1, 1-21, a)).
given(exactly(1, 1-21, l)).
group(1-7).

given(exactly(rel(1/7,1-7), 1-7, v)).
given(exactly(rel(2/7,1-7), 1-7, r)).
given(exactly(rel(3/7,1-7), 1-7, e)).
given(exactly(rel(1/7,1-7), 1-7, s)).

take_wr(1-21, 1-5-0, 1).
take_wr(1-7, 1-5-1, 1).
union(1-5, [1-5-0,1-5-1]).


probability(all_same(1-5,outcome(0))).

property(outcome(0), [a, c, e, i, l, s, r, t, v]).

