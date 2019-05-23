% H682: In a particular community, 70 percent of the voters are Democrats, and 30 percent are Republicans.  Thirty percent of the Republican voters and 60 percent of the Democratic voters favor the incumbent.  What is the probability that a randomly selected voter from this community is a Republican who favors the incumbent? ## Solution= .09

group(1-4).

given(exactly(rel(70/100, 1-4), 1-4, democrat)).
given(exactly(rel(30/100, 1-4, republican), 1-4, and(incumbent, republican))).
given(exactly(rel(60/100, 1-4, democrat), 1-4, and(democrat, incumbent))).
given(exactly(rel(30/100, 1-4), 1-4, republican)).

take(1-4, 3-9, 1).

probability(and(all(3-9, republican), all(3-9, incumbent))).

property(favor, [incumbent]).
property(party, [republican, democrat]).

