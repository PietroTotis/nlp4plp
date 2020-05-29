% M246: Bag A contains 3 blue rings, 5 red rings, and 2 white rings.  Bag B contains 2 blue rings and 3 red rings.  A ring is taken at random from bag A.  A ring is also taken at random from bag B.  What is the probability of picking both rings of the same colour? ## Solution= 0.42

group(1-1).

given(exactly(rel(2/10,1-1), 1-1, white)).
given(exactly(rel(5/10,1-1), 1-1, red)).
given(exactly(rel(3/10,1-1), 1-1, blue)).
group(2-1).

given(exactly(rel(3/5,2-1), 2-1, red)).
given(exactly(rel(2/5,2-1), 2-1, blue)).

take_wr(1-1, 3-4-0, 1).
take_wr(2-1, 3-4-1, 1).
union(3-4, [3-4-0,3-4-1]).


probability(all_same(3-4,colour(0))).

property(colour(0), [blue, white, red]).

