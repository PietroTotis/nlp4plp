% M424: A square dart board has 4 equal sections: 1 point, 1 point, 2 points and 3 points.  What is the probability of scoring more than four points with two random darts thrown at the board? ## Solution= 0.1875

group(2-14).
size(2-14, 4).

given(exactly(2, 2-14, 1)).
given(exactly(1, 2-14, 2)).
given(exactly(1, 2-14, 3)).

take_wr(2-14, 2-15, 2).


probability(aggcmp(2-15,outcome(0),sum,>,4)).

property(outcome(0), [1, 3, 2]).

