% H688: John flies frequently and likes to upgrade his seat to first class.  He has determined that if he checks in for his flight at least 2 hours early, the probability that he will get the upgrade is 0.8 ; otherwise, the probability that he will get the upgrade is 0.3.  With his busy schedule, he checks in at least 2 hours before his flight only 40 percent of the time.  What is the probability that for a randomly selected trip John will be able to upgrade to first class? ## Solution= .5

group(1-2).

given(exactly(rel(.3, 1-2, otherwise), 1-2, and(otherwise, upgrade))).
given(exactly(rel(.8, 1-2, check), 1-2, and(check, upgrade))).
given(exactly(u, 1-2, otherwise)).
given(exactly(rel(40/100, 1-2), 1-2, check)).

take(1-2, 4-10, 1).

probability(all(4-10, upgrade)).

property(checks_in, [check, otherwise]).
property(seat, [upgrade]).

