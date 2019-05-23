% L29: What is the probability of throwing at least one six in six tosses of a die with six sides, numbered 1, 2, 3, 4, 5 and 6. ## Solution= 0.66510202

group(1-16).
size(1-16, 6).

given(exactly(1, 1-16, 2)).
given(exactly(1, 1-16, 1)).
given(exactly(1, 1-16, 6)).
given(exactly(1, 1-16, 4)).
given(exactly(1, 1-16, 5)).
given(exactly(1, 1-16, 3)).

take_wr(1-16, 1-6, 6).


probability(atleast(1, 1-6, 6)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

