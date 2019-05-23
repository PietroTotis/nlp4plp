% H336: In a class of 45 students, 25 students failed Maths, 20 students failed Physics, and 10 students failed both subjects.  A student is selected at random.  If he failed Physics, find the probability that he failed in Maths. ## Solution= 1/2

group(1-6).
size(1-6, 45).

given(exactly(20, 1-6, physics)).
given(exactly(10, 1-6, and(maths, physics))).
given(exactly(25, 1-6, maths)).

take(1-6, 2-2, 1).
observe(all(2-2, physics)).

probability(all(2-2, maths)).

property(property, [physics]).
property(math, [maths]).

