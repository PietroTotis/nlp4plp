% L906: Steph is a North Georgia basketball player and a 75 percent free throw shooter.  During the season, find the probability that she makes her third shot on her fifth attempt. ## Solution= 0.15820313

group(2-17).

given(exactly(rel(0.75,2-17), 2-17, shooter)).

take_wr(2-17, 2-10, 5).


probability(and(nth(5, 2-10, shooter), exactly(3, 2-10, shooter))).

property(outcome(0), [shooter]).

