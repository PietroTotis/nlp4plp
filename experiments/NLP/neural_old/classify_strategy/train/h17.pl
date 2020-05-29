% H17: A large company has many branches all over the country.  4000 workers including 160 foreigners work at plant A, 2500 workers including 30 foreigners work at plant B and 1500 workers including 50 foreigners work at plant C.  One randomly selects a worker.  It happens to be a foreigner.  Find the probability that he/she works at plant A ## Solution= 2/3

group(1-3).

given(exactly(160, 1-3, and(a, foreigner))).
given(exactly(50, 1-3, and(c, foreigner))).
given(exactly(30, 1-3, and(b, foreigner))).
given(exactly(4000, 1-3, a)).
given(exactly(2500, 1-3, b)).
given(exactly(1500, 1-3, c)).

take(1-3, 3-5, 1).
observe(all(3-5, foreigner)).

probability(all(3-5, a)).

property(origin, [foreigner]).
property(type, [a, c, b]).

