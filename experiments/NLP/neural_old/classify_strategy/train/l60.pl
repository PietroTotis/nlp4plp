% L60: In a school, 60 percent of pupils have access to the internet at home.  A group of 8 students is chosen at random.  Find the probability that exactly 5 have access to the internet. ## Solution= 0.278691

group(1-8).

given(exactly(rel(0.6,1-8), 1-8, internet)).

take_wr(1-8, 1-10, 8).


probability(exactly(5, 1-10, internet)).

property(outcome(0), [internet]).

