% H338: In a class of 45 students, 25 students failed Maths, 20 students failed Physics, and 10 students failed both subjects.  A student is selected at random.  Find the probability that he failed in Maths or Physics by not both. ## Solution= 5/9

group(1-6).
size(1-6, 45).

given(exactly(20, 1-6, physics)).
given(exactly(10, 1-6, and(maths, physics))).
given(exactly(25, 1-6, maths)).

take(1-6, 2-2, 1).

probability(and(all(2-2, or(maths, physics)), all(2-2, not(and(maths, physics))))).

property(science, [physics]).
property(math, [maths]).

