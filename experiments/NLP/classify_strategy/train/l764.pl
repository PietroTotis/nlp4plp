% L764: Police plan to enforce speed limits during the morning rush hour on four different routes into the city.  The traps on routes A, B, C, and D are operated 40 percent, 30 percent, 20 percent and 30 percent of the time, respectively.  Biff always speeds to work, and he has probability 0.2, 0.1, 0.5 and 0.2 of using those routes.  What is the probability that he 'll get a ticket on any one morning? ## Solution= 0.27

group(1-15).

given(exactly(rel(0.1, 1-15, b), 1-15, and(b, speed))).
given(exactly(rel(30/100, 1-15), 1-15, d)).
given(exactly(rel(30/100, 1-15), 1-15, b)).
given(exactly(rel(0.2, 1-15, d), 1-15, and(d, speed))).
given(exactly(rel(20/100, 1-15), 1-15, c)).
given(exactly(rel(40/100, 1-15), 1-15, a)).
given(exactly(rel(0.2, 1-15, a), 1-15, and(a, speed))).
given(exactly(rel(0.5, 1-15, c), 1-15, and(c, speed))).

take(1-15, 4-14, 1).

probability(all(4-14, speed)).

property(route_a, [a]).
property(route_c, [c]).
property(route_b, [b]).
property(speed, [speed]).
property(route_d, [d]).

