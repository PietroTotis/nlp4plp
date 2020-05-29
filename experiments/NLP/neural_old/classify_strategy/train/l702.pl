% L702: Of Ph.D. students, 60 percent have paid assistantships.  If 3 students are selected at random, find the probability that all have assistantships. ## Solution= 0.216

group(2-3).

given(exactly(rel(60/100,2-3), 2-3, assistantship)).

take_wr(2-3, 2-5, 3).


probability(all(2-5, assistantship)).

property(property(0), [assistantship]).

