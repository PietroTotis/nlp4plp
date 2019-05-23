% M286: The 6 faces of a fair blue dice are marked with the numbers 1, 1, 6, 6, 8, 8.  Barry throws the blue dice.  What is the probability that it lands with 8 on the top face? ## Solution= 0.33333333

group(1-8).
size(1-8, 6).

given(exactly(2, 1-8, 1)).
given(exactly(2, 1-8, 8)).
given(exactly(2, 1-8, 6)).

take_wr(1-8, 2-2, 1).


probability(all(2-2, 8)).

property(outcome(0), [1, 8, 6]).

