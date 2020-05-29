% M773: During their freshman year, 85 percent of the students take English, 70 percent take Math and 65 percent take both.  If a student is chosen at random, what is the probability that the student took an English or a Math course during the freshman year? ## Solution= 90/100

group(1-10).

given(exactly(rel(70/100, 1-10), 1-10, math)).
given(exactly(rel(65/100, 1-10), 1-10, and(english, math))).
given(exactly(rel(85/100, 1-10), 1-10, english)).

take(1-10, 2-3, 1).

probability(all(2-3, or(english, math))).

property(math, [math]).
property(english, [english]).

