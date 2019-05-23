% H659: In a class of 60 students, 13 could not roll their tongue, 17 had attached earlobes, and 10 could roll their tongues and had attached earlobes.  A student is randomly selected from this class.  Find the probability that the selected student could either roll his or her tongue or had attached earlobes but not both. ## Solution= 0.73333333

group(1-6).
size(1-6, 60).

given(exactly(10, 1-6, and(attach, roll))).
given(exactly(13, 1-6, not)).
given(exactly(17, 1-6, attach)).

take(1-6, 2-2, 1).

probability(all(2-2, and(not(and(attach, roll)), or(attach, roll)))).

property(roll, [not, roll]).
property(earlobes, [attach]).

