% M110: A high school janitor has 140 keys on his key chain.  Of these 140 keys, 100 open classroom doors, 80 open the door to the teachers ' lounge, and 60 open classroom doors and the teachers ' lounge.  What is the probability that a randomly selected key opens a classroom? ## Solution= 5/7

group(1-7).
size(1-7, 140).

given(exactly(60, 1-7, and(classroom, lounge))).
given(exactly(100, 1-7, classroom)).
given(exactly(80, 1-7, lounge)).

take(1-7, 3-9, 1).

probability(all(3-9, classroom)).

property(classroom, [classroom]).
property(lounge, [lounge]).

