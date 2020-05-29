% M881: Doctors have devised a test for leptospirosis that has the following property: for any person suffering from lepto, there is a 90 percent chance of the test returning positive.  For a person not suffering from lepto, there is an 80 percent chance of the test returning negative.  It is known that 10 percent of people who go for testing have lepto.  If a person who gets tested gets a positive result for lepto - as in, the test result says they have got lepto -, what is the probability that they actually have lepto? ## Solution= 1/3

group(3-8).

given(exactly(rel(90/100, 3-8, have), 3-8, and(have, positive))).
given(exactly(rel(10/100, 3-8), 3-8, have)).
given(exactly(rel(90/100, 3-8), 3-8, not)).
given(exactly(rel(80/100, 3-8, not), 3-8, and(negative, not))).

take(3-8, 4-3, 1).
observe(all(4-3, positive)).

probability(all(4-3, have)).

property(has_lepto, [not, have]).
property(test, [positive, negative]).

