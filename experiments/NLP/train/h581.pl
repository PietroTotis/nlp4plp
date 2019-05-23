% H581: A long series of hospital record show that 40 percent of cases of a certain disease fail to recover.  Calculate the probability of a sample of 10 patients yielding only one death. ## Solution= .04031

group(1-12).

given(exactly(rel(40/100,1-12), 1-12, fail)).

take_wr(1-12, 2-9, 10).


probability(exactly(1, 2-9, fail)).

property(outcome(0), [fail]).

