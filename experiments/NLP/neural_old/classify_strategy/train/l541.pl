% L541: In the senior year of a high school graduating class of 100 students, 42 studied mathematics, 68 studied psychology, 54 studied history, 22 studied both mathematics and history, 25 studied both mathematics and psychology, 7 studied history but neither mathematics nor psychology, 10 studied all three subjects, and 8 did not take any of the three.  If a student is selected at random, find the probability that a person enrolled in psychology takes all three subjects. ## Solution= 5/34

group(1-10).
size(1-10, 100).

given(exactly(8, 1-10, and(neither, and(nor, not)))).
given(exactly(42, 1-10, mathematics)).
given(exactly(22, 1-10, and(history, mathematics))).
given(exactly(25, 1-10, and(mathematics, psychology))).
given(exactly(54, 1-10, history)).
given(exactly(68, 1-10, psychology)).
given(exactly(7, 1-10, and(history, and(neither, nor)))).
given(exactly(10, 1-10, and(history, and(mathematics, psychology)))).

take(1-10, 2-3, 1).
observe(all(2-3, psychology)).

probability(and(all(2-3, mathematics), all(2-3, history))).

property(psycho, [psychology, nor]).
property(math, [mathematics, neither]).
property(history, [not, history]).

