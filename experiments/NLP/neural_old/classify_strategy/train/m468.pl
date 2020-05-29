% M468: In a certain test 5 out of 20 students scored an ` A '.  We chose three students at random out of the 20 students without replacement.  What is the probability that all three are the ones who scored an ` A '? ## Solution= 0.0087719298245614

group(1-9).
size(1-9, 20).

given(exactly(5, 1-9, a)).

take(1-9, 2-4, 3).

probability(all(2-4, a)).

property(score, [a]).

