% L838: On a multiple choice examination with three possible answers for each of the five questions, what is the probability that a candidate would get four or more correct answers just by guessing? ## Solution= 11/243

group(1-30).

given(exactly(rel(1/3,1-30), 1-30, correct)).

take_wr(1-30, 1-33, 5).


probability(atleast(4, 1-33, correct)).

property(outcome(0), [correct]).

