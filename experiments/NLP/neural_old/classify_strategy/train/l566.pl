% L566: Hilary, George and Obama hire a camper van for a two-week holiday.  Each day they spin to see who will drive.  The spinner has equal sized sectors.  What is the probability that Obama drives the camper van on each of the first two days of the holiday? ## Solution= 1/9

group(2-7).
size(2-7, 3).

given(exactly(1, 2-7, hilary)).
given(exactly(1, 2-7, obama)).
given(exactly(1, 2-7, george)).

take_wr(2-7, 2-9, 2).


probability(all(2-9, obama)).

property(outcome(0), [obama, hilary, george]).

