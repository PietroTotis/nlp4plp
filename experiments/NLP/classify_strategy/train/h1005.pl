% H1005: When it 's good weather there is a 0.3 chance that someone will sit on the terrace.  If one person sits on the terrace, there is a 97 percent chance that everyone else follows.  What is the probability that everyone sits on the terrace? ## Solution= .291

group(1-12).

given(exactly(rel(97/100, 1-12, sit), 1-12, and(everyone, sit))).
given(exactly(rel(.3, 1-12), 1-12, sit)).

take(1-12, 3-4, 1).

probability(all(3-4, everyone)).

property(sits, [everyone]).
property(terrace, [sit]).

