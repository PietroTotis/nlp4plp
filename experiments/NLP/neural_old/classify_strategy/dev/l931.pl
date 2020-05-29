% L931: Two hundred students were sampled in the College of Arts and Science.  It was found that: 137 take math, 50 take history, 124 take English, 33 take math and history, 29 take history and English, 92 take math and English, 18 take math, history and English.  Find the probability that a student selected at random out of the 200 takes neither math nor history nor English. ## Solution= 0.125

group(1-3).
size(1-3, 200).

given(exactly(50, 1-3, history)).
given(exactly(137, 1-3, math)).
given(exactly(92, 1-3, and(english, math))).
given(exactly(18, 1-3, and(english, and(history, math)))).
given(exactly(33, 1-3, and(history, math))).
given(exactly(124, 1-3, english)).
given(exactly(29, 1-3, and(english, history))).

take(1-3, 3-6, 1).

probability(and(none(3-6, math), and(none(3-6, history), none(3-6, english)))).

property(history, [history]).
property(math, [math]).
property(english, [english]).

