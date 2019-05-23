% M84: In a class, 30 percent of the students offered English, 20 percent offered Hindi and 10 percent offered both.  If a student is selected at random, what is the probability that he has offered English or Hindi? ## Solution= 2/5

group(1-3).

given(exactly(rel(30/100, 1-3), 1-3, english)).
given(exactly(rel(20/100, 1-3), 1-3, hindi)).
given(exactly(rel(10/100, 1-3), 1-3, and(english, hindi))).

take(1-3, 2-3, 1).

probability(all(2-3, or(english, hindi))).

property(hindi, [hindi]).
property(english, [english]).

