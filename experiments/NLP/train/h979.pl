% H979: A red die is fair and a green die is loaded so that the probability it comes up 6 is 1/10.  The green die is thrown five times and the red die is thrown four times.  Find the probability that a total of 3 sixes occurs. ## Solution= 0.0791125

group(1-9).

given(exactly(rel(1/10,1-9), 1-9, 6)).
group(1-3).

given(exactly(rel(1/6,1-3), 1-3, 6)).

take_wr(1-3, 3-6-0, 4).
take_wr(1-9, 3-6-1, 5).
union(3-6, [3-6-0,3-6-1]).


probability(exactly(3, 3-6, 6)).

property(outcome(0), [6]).

