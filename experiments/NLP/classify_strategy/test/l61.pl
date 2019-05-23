% L61: In a school, 60 percent of pupils have access to the internet at home.  A group of 8 students is chosen at random.  Find the probability that at least 6 students have access to the internet. ## Solution= 0.315394

group(1-8).

given(exactly(rel(0.6,1-8), 1-8, internet)).

take_wr(1-8, 1-10, 8).


probability(atleast(6, 1-10, internet)).

property(outcome(0), [internet]).

