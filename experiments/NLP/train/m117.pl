% M117: A middle school principal has 80 keys on her key chain to distribute to staff on the first day of school.  Of these 80 keys, 60 open classroom doors, 40 open the door to the teachers ' lounge, and 30 open classroom doors and the teachers ' lounge.  What is the probability that a key opens a classroom? ## Solution= .75

group(1-7).
size(1-7, 80).

given(exactly(30, 1-7, and(classroom, lounge))).
given(exactly(60, 1-7, classroom)).
given(exactly(40, 1-7, lounge)).

take(1-7, 3-7, 1).

probability(all(3-7, classroom)).

property(lounge, [lounge]).
property(classrooms, [classroom]).

