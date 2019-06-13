% M562: In a baseball game, Tommy gets a hit 30 percent of the time when facing this pitcher.  Joey gets a hit 25 percent of the time.  They are both coming up to bat this inning.  What is the probability that neither player gets a hit? ## Solution= 0.525

group(2-1).

given(exactly(rel(25/100,2-1), 2-1, hit)).
group(1-6).

given(exactly(rel(30/100,1-6), 1-6, hit)).

take_wr(1-6, 3-9-0, 1).
take_wr(2-1, 3-9-1, 1).
union(3-9, [3-9-0,3-9-1]).


probability(none(3-9, hit)).

property(outcome(0), [hit]).
