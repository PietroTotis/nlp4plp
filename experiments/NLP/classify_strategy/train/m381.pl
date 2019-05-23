% M381: Four students each take a free-throw.  If each student has a 2/5 chance of making his/her free-throw, what is the probability that exactly three students make their shot? ## Solution= 0.1536

group(1-6).

given(exactly(rel(2/5,1-6), 1-6, make)).

take_wr(1-6, 1-4, 4).


probability(exactly(3, 1-4, make)).

property(outcome(0), [make]).

