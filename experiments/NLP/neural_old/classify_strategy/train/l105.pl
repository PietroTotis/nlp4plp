% L105: In Exton School, 60 percent of the boys play baseball and 24 percent of the boys play baseball and football.  What percent of those that play baseball also play football? ## Solution= 0.4

group(boys).

given(exactly(rel(24/100, boys), boys, and(baseball, football))).
given(exactly(rel(60/100, boys), boys, baseball)).

take(boys, 2-4, 1).
observe(all(2-4, baseball)).

probability(all(2-4, football)).

property(football, [football]).
property(baseball, [baseball]).

