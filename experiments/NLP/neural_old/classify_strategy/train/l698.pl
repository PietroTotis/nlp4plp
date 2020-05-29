% L698: According to the Statistical Abstract of the United States, 70.3 percent of females ages 20 to 24 have never been married.  Choose 5 young women in this age category at random.  Find the probability that none have ever been married. ## Solution= 0.703^5

group(2-4).

given(exactly(rel(0.703,2-4), 2-4, marry)).

take_wr(2-4, 2-1, 5).


probability(all(2-1, marry)).

property(outcome(0), [marry]).

