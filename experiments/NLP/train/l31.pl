% L31: Jayson rolled a die twelve times.  The die has 6 sides, numbered 1, 2, 3, 4, 5 and 6.  He noticed that three of his rolls were fours.  What is the probability of rolling a four? ## Solution= 1/6

group(1-4).
size(1-4, 6).

given(exactly(1, 1-4, 2)).
given(exactly(1, 1-4, 1)).
given(exactly(1, 1-4, 6)).
given(exactly(1, 1-4, 4)).
given(exactly(1, 1-4, 5)).
given(exactly(1, 1-4, 3)).

take_wr(1-4, 1-2, 1).


probability(all(1-2, 4)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

