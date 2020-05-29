% L567: Hilary, George and Obama hire a camper van for a two-week holiday.  Each day they spin to see who will drive.  The spinner has equal sized sectors.  What is the probability that there will be different drivers on each of the first two days? ## Solution= 2/3

group(2-7).
size(2-7, 3).

given(exactly(1, 2-7, hilary)).
given(exactly(1, 2-7, obama)).
given(exactly(1, 2-7, george)).

take_wr(2-7, 2-9, 2).


probability(all_diff(2-9,outcome(0))).

property(outcome(0), [obama, hilary, george]).

