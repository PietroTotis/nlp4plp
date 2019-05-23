% H366: A scratch off lottery ticket has six spaces that can be uncovered.  Two of the six spaces are WIN ; the other four are LOSE.  A player randomly uncovers two spaces.  If she gets both WIN spaces, she wins a large prize.  If she uncovers one WIN and one LOSE she gets a small prize.  What is the probability that she gets a small prize? ## Solution= 8/15

group(1-8).
size(1-8, 6).

given(exactly(2, 1-8, win)).
given(exactly(4, 1-8, lose)).

take(1-8, 3-6, 2).

probability(and(exactly(1, 3-6, win), exactly(1, 3-6, lose))).

property(property, [win, lose]).

