% H276: An insurance company believes that people can be divided into two classes: those who are accident-prone and those who are not.  The company 's statistics show that an accident-prone person will have an accident at some time within a fixed 1-year period with probability .4.  However, this probability decreases to .2 for a person who is not accident-prone.  If we assume that 30 percent of the population is accident prone, what is the probability that a new policyholder will have an accident within a year of purchasing a policy? ## Solution= .26

group(1-12).
size(1-12, 2).

given(exactly(rel(.2, 1-12, not), 1-12, and(accident, not))).
given(exactly(rel(30/100, 1-12), 1-12, accident-prone)).
given(exactly(rel(.4, 1-12, accident-prone), 1-12, and(accident, accident-prone))).
given(exactly(u, 1-12, not)).

take(1-12, 4-21, 1).

probability(all(4-21, accident)).

property(accident, [accident]).
property(prone, [accident-prone, not]).

