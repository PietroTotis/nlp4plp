% H392: If a ten-question True/False test is given and 60 percent is a passing grade, what is the probability, to the nearest whole percent, of passing if you guess on each question? ## Solution= 0.37695313

group(1-34).
size(1-34, 2).

given(exactly(1, 1-34, correct)).
given(exactly(1, 1-34, v(1-34,0))).

take_wr(1-34, 1-5, 10).


probability(atleast(6, 1-5, correct)).

property(outcome(0), [v(1-34,0), correct]).

