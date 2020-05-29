% L1007: A written driving test is graded either pass or fail.  A randomly chosen person from a driving class has a 40 percent chance of knowing the material well.  If the person knows the material well, the probability for this person to pass the written test is 0.8.  For a person not knowing the material well, the probability is 0.4 for passing the test.  What is the probability of a randomly chosen person from the class for passing the test? ## Solution= 0.56

group(2-8).

given(exactly(rel(0.8, 2-8, well), 2-8, and(pass, well))).
given(exactly(rel(0.4, 2-8, not), 2-8, and(not, pass))).
given(exactly(rel(40/100, 2-8), 2-8, well)).
given(exactly(rel(0.6, 2-8), 2-8, not)).

take(2-8, 5-9, 1).

probability(all(5-9, pass)).

property(test, [pass]).
property(knowledge, [not, well]).

