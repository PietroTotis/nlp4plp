% M267: Amir makes a fair spinner with six sectors, numbered 2, 3, 3, 3, 4 and 5.  What is the probability that the spinner lands on 2? ## Solution= 1/6

group(1-5).
size(1-5, 6).

given(exactly(1, 1-5, 4)).
given(exactly(1, 1-5, 2)).
given(exactly(1, 1-5, 5)).
given(exactly(3, 1-5, 3)).

take_wr(1-5, 2-8, 1).


probability(all(2-8, 2)).

property(outcome(0), [3, 2, 5, 4]).

