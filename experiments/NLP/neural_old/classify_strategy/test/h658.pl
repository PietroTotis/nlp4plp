% H658: In a class of 60 students, 13 could not roll their tongue, 17 had attached earlobes, and 10 could roll their tongues and had attached earlobes.  A student is randomly selected from this class.  Find the probability that the selected student could not roll his or her tongue and had attached earlobes. ## Solution= 0.11666667

group(1-6).
size(1-6, 60).

given(exactly(10, 1-6, and(attach, roll))).
given(exactly(13, 1-6, not)).
given(exactly(17, 1-6, attach)).

take(1-6, 2-2, 1).

probability(all(2-2, and(not, attach))).

property(roll, [not, roll]).
property(earlobes, [attach]).

