% M51: A trick coin is designed so the probability it will land `` heads '' is 5/8.  If the coin is flipped 3 times, what is the probability that the first 2 flips are heads and the third flip is tails? ## Solution= 0.146484375

group(2-3).

given(exactly(rel(5/8,2-3), 2-3, head)).
given(exactly(u, 2-3, tails)).

take_wr(2-3, 2-5, 3).


probability(and(and(nth(1, 2-5, head), nth(2, 2-5, head)), nth(3, 2-5, tails))).

property(outcome(0), [head, tails]).

