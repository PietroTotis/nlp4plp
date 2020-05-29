% L729: The U.S. Department of Health and Human Services reports that 15 percent of Americans have chronic sinusitis.  If 5 people are selected at random, find the probability that at least one has chronic sinusitis. ## Solution= 0.5562946875

group(2-3).

given(exactly(rel(15/100,2-3), 2-3, sinusitis)).

take_wr(2-3, 2-5, 5).


probability(atleast(1, 2-5, sinusitis)).

property(outcome(0), [sinusitis]).

