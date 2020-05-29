% H857: In a trial, the judge is 65 percent sure that Susan has committed a crime.  Robert is a witness who knows whether Susan is innocent or guilty.  However, Robert is Susan 's friend and will lie with probability 0.25 if Susan is guilty.  He will tell the truth if she is innocent.  What is the probability that Robert will commit perjury? ## Solution= .1625

group(1-3).

given(exactly(rel(65/100, 1-3), 1-3, crime)).
given(exactly(rel(.25, 1-3, crime), 1-3, and(crime, lie))).

take(1-3, 5-6, 1).

probability(all(5-6, lie)).

property(lie, [lie]).
property(crime, [crime]).

