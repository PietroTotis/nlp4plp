% H1009: 5 percent of the statistics exercises found in textbooks have wrong answers.  In a sample of 10 exercises, what is the probability that 6 exercise solutions are wrong? ## Solution= 2.6725986328125e-06

group(1-6).

given(exactly(rel(5/100,1-6), 1-6, wrong)).

take_wr(1-6, 2-6, 10).


probability(exactly(6, 2-6, wrong)).

property(outcome(0), [wrong]).

