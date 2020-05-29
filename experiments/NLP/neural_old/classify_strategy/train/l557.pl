% L557: If the probability is 0.1 that a person will make a mistake on his or her state income tax return, find the probability that four totally unrelated persons each make a mistake. ## Solution= 0.0001

group(1-29).

given(exactly(rel(0.1,1-29), 1-29, mistake)).

take_wr(1-29, 1-31, 4).


probability(all(1-31, mistake)).

property(outcome(0), [mistake]).

