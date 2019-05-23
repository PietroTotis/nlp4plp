% L534: In a high school graduating class of 100 students, 54 studied mathematics, 69 studied history, and 35 studied both mathematics and history.  If one of these students is selected at random, find the probability that the student took mathematics or history. ## Solution= 22/25

group(1-6).
size(1-6, 100).

given(exactly(35, 1-6, and(history, mathematics))).
given(exactly(69, 1-6, history)).
given(exactly(54, 1-6, mathematics)).

take(1-6, 2-2, 1).

probability(all(2-2, or(mathematics, history))).

property(mathematics, [mathematics]).
property(history, [history]).

