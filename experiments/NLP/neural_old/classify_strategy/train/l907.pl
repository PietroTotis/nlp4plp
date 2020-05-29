% L907: Steph is a North Georgia basketball player and a 75 percent free throw shooter.  During the season, find the probability that she makes at least 8 of her first 10 attempts. ## Solution= 0.525592803955078

group(2-18).

given(exactly(rel(0.75,2-18), 2-18, shooter)).

take_wr(2-18, 2-10, 10).


probability(atleast(8, 2-10, shooter)).

property(outcome(0), [shooter]).

