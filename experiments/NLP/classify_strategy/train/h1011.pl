% H1011: Jessa travels to America and has a 95 percent chance of going to a Starbucks.  The employees at Starbucks are trained to always ask the name of their customers and spell them wrong 25 percent of the time.  What is the probability that Jessa 's name is spelled wrong? ## Solution= .2375

group(1-2).

given(exactly(rel(25/100, 1-2, starbuck), 1-2, and(starbuck, wrong))).
given(exactly(rel(95/100, 1-2), 1-2, starbuck)).

take(1-2, 3-6, 1).

probability(all(3-6, wrong)).

property(spelt, [wrong]).
property(starbucks, [starbuck]).

