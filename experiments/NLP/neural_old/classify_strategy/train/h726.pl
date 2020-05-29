% H726:  A large industrial firm uses 3 local motels to provide overnight accommodations for its clients.  From past experience it is known that 20 percent of the clients are assigned rooms at the Ramada Inn, 50 percent at the Sheraton, and 30 percent at the Lakeview Motor Lodge.  If the plumbing is faulty in 5 percent of the rooms at the Ramada Inn, in 4 percent of the rooms at the Sheraton, and in 8 percent of the rooms at the Lakeview Motor Lodge, what, is the probability that a client will be assigned a room with faulty plumbing? ## Solution= .054

group(1-8).

given(exactly(rel(8/100, 1-8, lakeview), 1-8, and(faulty, lakeview))).
given(exactly(rel(4/100, 1-8, sheraton), 1-8, and(faulty, sheraton))).
given(exactly(rel(30/100, 1-8), 1-8, lakeview)).
given(exactly(rel(50/100, 1-8), 1-8, sheraton)).
given(exactly(rel(5/100, 1-8, ramada), 1-8, and(faulty, ramada))).
given(exactly(rel(20/100, 1-8), 1-8, ramada)).

take(1-8, 3-47, 1).

probability(all(3-47, faulty)).

property(plumbing, [faulty]).
property(inn, [sheraton, lakeview, ramada]).

