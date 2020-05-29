% L819: In a hostel, 60 percent of the students read Hindi newspaper, 40 percent read English newspaper and 20 percent read both Hindi and English news papers.  A student is selected at random.  Find the probability that she reads neither Hindi nor English news papers. ## Solution= 1/5

group(1-9).

given(exactly(rel(20/100, 1-9), 1-9, and(english, hindi))).
given(exactly(rel(60/100, 1-9), 1-9, hindi)).
given(exactly(rel(40/100, 1-9), 1-9, english)).

take(1-9, 2-2, 1).

probability(and(none(2-2, hindi), none(2-2, english))).

property(hindi, [hindi]).
property(english, [english]).

