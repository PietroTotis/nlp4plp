% H806: Software to detect fraud in consumer phone cards tracks the number of metropolitan areas where calls originate each day.  It is found that 1 percent of the legitimate users originate calls from two or more metropolitan areas in a single day.  However, 30 percent of fraudulent users originate calls from two or more metropolitan areas in a single day.  The proportion of fraudulent users is 0.01 percent.  If the same user originates calls from two or more metropolitan areas in a single day, what is the probability that the user is fraudulent? ## Solution= .00299

group(2-10).

given(exactly(u, 2-10, legitimate)).
given(exactly(rel(1/100, 2-10, legitimate), 2-10, and(legitimate, two))).
given(exactly(rel(30/100, 2-10, fraudulent), 2-10, and(fraudulent, two))).
given(exactly(rel(0.01/100, 2-10), 2-10, fraudulent)).

take(2-10, 5-4, 1).
observe(all(5-4, two)).

probability(all(5-4, fraudulent)).

property(property, [two]).
property(users, [fraudulent, legitimate]).

