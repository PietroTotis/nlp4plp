% H431: Out of students in a class, 60 percent are geniuses, 70 percent love chocolate, and 40 percent fall into both categories.  Determine the probability that a randomly selected student is neither a genius nor a chocolate lover. ## Solution= 0.1

group(1-3).

given(exactly(rel(70/100, 1-3), 1-3, chocolate)).
given(exactly(rel(40/100, 1-3), 1-3, and(chocolate, genius))).
given(exactly(rel(60/100, 1-3), 1-3, genius)).

take(1-3, 2-8, 1).

probability(all(2-8, and(not(genius), not(chocolate)))).

property(genius, [genius]).
property(chocolate, [chocolate]).

