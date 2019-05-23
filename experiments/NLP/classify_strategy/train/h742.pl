% H742: One prominent physician claims that 70 percent of those with lung cancer are chain smokers.  If his assertion is correct, find the probability that of 20 such patients recently admitted to a hospital, fewer than half are chain smokers. ## Solution= 0.017144816

group(1-12).

given(exactly(rel(70/100,1-12), 1-12, smoker)).

take_wr(1-12, 2-14, 20).


probability(less_than(10, 2-14, smoker)).

property(outcome(0), [smoker]).

