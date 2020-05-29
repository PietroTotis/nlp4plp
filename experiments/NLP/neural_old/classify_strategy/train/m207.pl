% M207: What is the probability of getting at least one six in a single throw of three unbiased dice with 6 sides, numbered 1, 2, 3, 4, 5, 6? ## Solution= 91/216

group(1-18).
size(1-18, 6).

given(exactly(1, 1-18, 2)).
given(exactly(1, 1-18, 1)).
given(exactly(1, 1-18, 6)).
given(exactly(1, 1-18, 4)).
given(exactly(1, 1-18, 5)).
given(exactly(1, 1-18, 3)).

take_wr(1-18, 1-14, 3).


probability(atleast(1, 1-14, 6)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

