% M245: Bag A contains 3 blue rings, 5 red rings, and 2 white rings.  Bag B contains 2 blue rings and 3 red rings.  A ring is taken at random from bag A.  A ring is also taken at random from bag B.  What is the probability of picking at least one red? ## Solution= 0.8

group(4-9).

given(exactly(rel(2/5,4-9), 4-9, blue)).
given(exactly(rel(3/5,4-9), 4-9, red)).
group(3-8).

given(exactly(rel(2/10,3-8), 3-8, white)).
given(exactly(rel(3/10,3-8), 3-8, blue)).
given(exactly(rel(5/10,3-8), 3-8, red)).

take_wr(3-8, 3-4-0, 1).
take_wr(4-9, 3-4-1, 1).
union(3-4, [3-4-0,3-4-1]).


probability(atleast(1, 3-4, red)).

property(colour(0), [blue, white, red]).

