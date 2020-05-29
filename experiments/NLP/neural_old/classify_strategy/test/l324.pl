% L324: One per thousand of a population is subject to certain kinds of accident each year.  Given that an insurance company has insured 5000 persons from the population, find the probability that at most two persons will incur this accident. ## Solution= 0.1245256542

group(1-6).

given(exactly(rel(1/1000,1-6), 1-6, accident)).

take_wr(1-6, 2-7, 5000).


probability(atmost(2, 2-7, accident)).

property(outcome(0), [accident]).

