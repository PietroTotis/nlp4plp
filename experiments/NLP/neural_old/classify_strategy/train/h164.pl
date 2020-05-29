% H164: Suppose that an insurance company classifies people into one of three classes: good risks, average risks, and bad risks.  The company 's records indicate that the probabilities that good -, average -, and bad-risk persons will be involved in an accident over a 1-year span are, respectively, .05, .15, and .30.  If 20 percent of the population is a good risk, 50 percent an average risk, and 30 percent a bad risk, what proportion of people have accidents in a fixed year? ## Solution= 0.175

group(3-6).

given(exactly(rel(.3, 3-6, bad), 3-6, and(accident, bad))).
given(exactly(rel(.05, 3-6, good), 3-6, and(accident, good))).
given(exactly(rel(20/100, 3-6), 3-6, good)).
given(exactly(rel(50/100, 3-6), 3-6, average)).
given(exactly(rel(30/100, 3-6), 3-6, bad)).
given(exactly(rel(.15, 3-6, average), 3-6, and(accident, average))).

take(3-6, 3-28, 1).

probability(all(3-28, accident)).

property(outcome, [bad, good, average]).
property(accident, [accident]).

