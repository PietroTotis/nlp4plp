% L1003: A survey about a measure to legalize medical marijuanah is taken in three states: Kentucky, Maine and Arkansas.  In Kentucky, 50 percent of voters support the measure, in Maine, 60 percent of the voters support the measure and in Arkansas, 35 percent of the voters support the measure.  Of the total population of the three states, 40 percent live in Kentucky, 25 percent live in Maine, and 35 percent live in Arkansas.  Given that a voter supports the measure, what is the probability that he/she lives in Maine? ## Solution= 20/63

group(3-4).

given(exactly(rel(50/100, 3-4, kentucky), 3-4, and(kentucky, support))).
given(exactly(rel(60/100, 3-4, maine), 3-4, and(maine, support))).
given(exactly(rel(35/100, 3-4, arkansas), 3-4, and(arkansas, support))).
given(exactly(rel(25/100, 3-4), 3-4, maine)).
given(exactly(rel(35/100, 3-4), 3-4, arkansas)).
given(exactly(rel(40/100, 3-4), 3-4, kentucky)).

take(3-4, 4-4, 1).
observe(all(4-4, support)).

probability(all(4-4, maine)).

property(state, [arkansas, maine, kentucky]).
property(measure, [support]).

