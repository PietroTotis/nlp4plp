% L291: An insurance company has discovered that only about 0.1 percent of the population is involved in a certain type of accident each year.  If its 10,000 policy holders were randomly selected from the population what is the probability that not more than 5 of its clients will be involved in such an accident next year? ## Solution= ?

group(2-5).

given(exactly(rel(1/1000,2-5), 2-5, accident)).

take_wr(2-5, 2-8, 10000).


probability(not(more_than(5, 2-8, accident))).

property(outcome(0), [accident]).

