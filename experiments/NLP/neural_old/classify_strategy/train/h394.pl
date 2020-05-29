% H394: Deb has a 1/5 chance of hitting a bull 's - eye with one dart.  If she tosses 5 darts, what is the probability that she will hit at least one bull 's - eye. ## Solution= .67232

group(1-15).

given(exactly(rel(1/5,1-15), 1-15, hit)).

take_wr(1-15, 2-3, 5).


probability(atleast(1, 2-3, hit)).

property(outcome(0), [hit]).

