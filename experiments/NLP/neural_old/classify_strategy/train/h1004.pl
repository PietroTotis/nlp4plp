% H1004: The walking speed while walking to the Alma varies depending on how hungry everyone is.  20 percent of the time, when everyone is very hungry, people walk fast.  40 percent of the time, when everyone is moderately hungry, people walk at a normal tempo, and 40 percent of the time, when everyone is slightly hungry, people walk at a slower tempo.  There is a 50 percent chance of people falling behind when walking fast, and a 30 percent chance when walking at a normal tempo.  What is the probability that a randomly chosen person has fallen behind? ## Solution= .22

group(1-14).

given(exactly(rel(30/100, 1-14, normal), 1-14, and(behind, normal))).
given(exactly(rel(50/100, 1-14, fast), 1-14, and(behind, fast))).
given(exactly(rel(20/100, 1-14), 1-14, fast)).
given(exactly(rel(40/100, 1-14), 1-14, slower)).
given(exactly(rel(40/100, 1-14), 1-14, normal)).

take(1-14, 5-9, 1).

probability(all(5-9, behind)).

property(falling, [behind]).
property(speed, [slower, fast, normal]).

