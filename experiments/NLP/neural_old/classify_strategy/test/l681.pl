% L681: If 37 percent of high school students said that they exercise regularly, find the probability that 5 randomly selected high school students will say that they exercise regularly. ## Solution= 0.37^5

group(1-23).

given(exactly(rel(0.37,1-23), 1-23, exercise)).

take_wr(1-23, 1-20, 5).


probability(all(1-20, exercise)).

property(outcome(0), [exercise]).

