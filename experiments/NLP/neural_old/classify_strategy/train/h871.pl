% H871: In a trial, the judge is 65 percent sure that Susan has committed a crime.  Julie and Robert are two witnesses who know whether Susan is innocent or guilty.  However, Robert is Susan 's friend and will lie with probability 0.25 if Susan is guilty.  He will tell the truth if she is innocent.  Julie is Susan 's enemy and will lie with probability 0.30 if Susan is innocent.  She will tell the truth if Susan is guilty.  What is the probability that Susan is guilty if Robert and Julie give conflicting testimony? ## Solution= 0.607476635514019

group(1-3).

given(exactly(rel(.3, 1-3, no_crime), 1-3, and(julie_guilty, no_crime))).
given(exactly(rel(.25, 1-3, crime), 1-3, and(crime, rob_innocent))).
given(exactly(rel(1/1, 1-3, no_crime), 1-3, and(no_crime, rob_innocent))).
given(exactly(rel(1/1, 1-3, crime), 1-3, and(crime, julie_guilty))).
given(exactly(u, 1-3, no_crime)).
given(exactly(rel(65/100, 1-3), 1-3, crime)).

take(1-3, 7-6, 1).
observe(all(7-6, or(and(rob_innocent, julie_guilty), and(not(rob_innocent), not(julie_guilty))))).

probability(all(7-6, crime)).

property(saidj, [julie_guilty]).
property(said, [rob_innocent]).
property(crime, [no_crime, crime]).

