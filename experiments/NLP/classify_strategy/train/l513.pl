% L513:  Your friend has generated two random numbers from 1, 2, 3, 4, 5, 6, 7, 8, 9 and 10, independently of each other.  What is the probability that both numbers are even given the information that the number 2 is among the two numbers? ## Solution= 9/19

group(1-7).
size(1-7, 10).

given(exactly(1, 1-7, 9)).
given(exactly(1, 1-7, 2)).
given(exactly(1, 1-7, 1)).
given(exactly(1, 1-7, 6)).
given(exactly(1, 1-7, 4)).
given(exactly(1, 1-7, 7)).
given(exactly(1, 1-7, 5)).
given(exactly(1, 1-7, 10)).
given(exactly(1, 1-7, 3)).
given(exactly(1, 1-7, 8)).

take_wr(1-7, 1-4, 2).
observe(atleast(1, 1-4, 2)).

probability(all(1-4,is_even)).

property(outcome(0), [10, 1, 3, 2, 5, 4, 7, 6, 9, 8]).