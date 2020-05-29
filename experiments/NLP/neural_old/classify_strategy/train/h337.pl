% H337: In a class of 45 students, 25 students failed Maths, 20 students failed Physics, and 10 students failed both subjects.  A student is selected at random.  If he failed Maths, find the probability that he failed in Physics. ## Solution= 2/5

group(1-6).
size(1-6, 45).

given(exactly(20, 1-6, physics)).
given(exactly(10, 1-6, and(maths, physics))).
given(exactly(25, 1-6, maths)).

take(1-6, 2-2, 1).
observe(all(2-2, maths)).

probability(all(2-2, physics)).

property(science, [physics]).
property(math, [maths]).

