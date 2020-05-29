% H747: A study examined national attitudes about antidepressants.  The study revealed that approximately 70 percent believe `` antidepressants do not really cure anything, they just cover up the real trouble. ''  According to this study, what is the probability that at least 3 of the next 5 people selected at random will be of this opinion? ## Solution= 0.83692

group(1-4).

given(exactly(rel(70/100,1-4), 1-4, believe)).

take_wr(1-4, 3-18, 5).


probability(atleast(3, 3-18, believe)).

property(outcome(0), [believe]).

