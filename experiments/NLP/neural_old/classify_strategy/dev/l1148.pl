% L1148: This year, a medical insurance policyholder has probability 0.70 of having no emergency room visits, 0.85 of having no hospital stays, and 0.61 of having neither emergency room visits nor hospital stays.  Calculate the probability that the policyholder has at least one emergency room visit and at least one hospital stay this year. ## Solution= 0.06

group(1-7).

given(exactly(rel(0.85, 1-7), 1-7, hospital)).
given(exactly(rel(0.61, 1-7), 1-7, and(emergency, hospital))).
given(exactly(rel(0.70, 1-7), 1-7, emergency)).

take(1-7, 2-6, 1).

probability(and(none(2-6, emergency), none(2-6, hospital))).

property(hospital, [hospital]).
property(visits, [emergency]).

