% L870: A group of students were surveyed about whether or not they played soccer or netball.  It was found that 15 played soccer, 16 played netball, 10 played both soccer and netball and 7 played neither soccer nor netball.  What is the probability that a student plays soccer but not netball? ## Solution= 5/28

group(1-2).

given(exactly(7, 1-2, and(not_netball, not_soccer))).
given(exactly(10, 1-2, and(netball, soccer))).
given(exactly(15, 1-2, soccer)).
given(exactly(16, 1-2, netball)).

take(1-2, 3-7, 1).

probability(and(all(3-7, soccer), none(3-7, netball))).

property(soccer, [soccer, not_soccer]).
property(netball, [netball, not_netball]).

