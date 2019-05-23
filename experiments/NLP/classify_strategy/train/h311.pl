% H311: A six sided dice with faces numbered 1, 2, 3, 4, 5, 6 is rolled twice.  What is the probability that the face with number 2 on it would not be facing upward on either roll? ## Solution= 25/36

group(1-4).
size(1-4, 6).

given(exactly(1, 1-4, 2)).
given(exactly(1, 1-4, 1)).
given(exactly(1, 1-4, 6)).
given(exactly(1, 1-4, 4)).
given(exactly(1, 1-4, 5)).
given(exactly(1, 1-4, 3)).

take_wr(1-4, 1-20, 2).


probability(all(1-20, not(2))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

