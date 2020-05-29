% H277: The Beardstown Bearcats baseball team plays 60 percent of its games at night.  It wins 55 percent of its night games but only 35 percent of its day games.  You read in the paper that the Bearcats won their last game against the Manteno Maulers.  What is the probability that it was played at night? ## Solution= 0.70212766

group(1-11).

given(exactly(rel(40/100, 1-11), 1-11, day)).
given(exactly(rel(60/100, 1-11), 1-11, night)).
given(exactly(rel(55/100, 1-11, night), 1-11, and(night, win))).
given(exactly(rel(35/100, 1-11, day), 1-11, and(day, win))).

take(1-11, 3-12, 1).
observe(all(3-12, win)).

probability(all(3-12, night)).

property(outcome, [win]).
property(night, [day, night]).

