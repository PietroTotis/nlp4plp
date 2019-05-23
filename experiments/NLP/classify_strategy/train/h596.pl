% H596: A man finds that on the average he hits the target 9 times out of every 10 times and scores a bull 's eye on the average once every 5 rounds.  He fires 4 rounds.  What is the probability that he scores at least 2 bull 's eyes and he has hit the target on each of the 4 rounds? ## Solution= 177/1250

group(1-9).

given(exactly(rel(1/1, 1-9, eye), 1-9, and(eye, target))).
given(exactly(rel(9/10, 1-9), 1-9, target)).
given(exactly(rel(1/5, 1-9), 1-9, eye)).

take_wr(1-9, 2-4, 4).

probability(and(atleast(2, 2-4, eye), all(2-4, target))).

property(on_target, [target]).
property(bulls_eye, [eye]).

