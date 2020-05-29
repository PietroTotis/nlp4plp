% H349: In a school of 250 students, everyone takes one English class and one History class each year.  Today, 15 total students were absent from their English class and 10 total students were absent from their History class.  Five of the students were absent form both classes.  If a student is chosen at random from this school, what is the probability that s/he was not absent from either class? ## Solution= 0.92

group(1-6).
size(1-6, 250).

given(exactly(10, 1-6, absent_history)).
given(exactly(15, 1-6, absent_english)).
given(exactly(5, 1-6, and(absent_english, absent_history))).

take(1-6, 4-3, 1).

probability(none(4-3, or(absent_english, absent_history))).

property(class, [absent_english]).
property(history, [absent_history]).

