% H690: In 2003, approximately 0.38 percent of the U.S. population had HIV/AIDS.  Of these, it was estimated that 24.8 percent were not aware they have the disease.  What is the probability that a randomly selected person who does not know whether or not he or she has the disease will actually have it? ## Solution= .000945

group(1-10).

given(exactly(rel(1/1, 1-10, no_hiv), 1-10, and(no_hiv, unaware))).
given(exactly(rel(0.248, 1-10, hiv), 1-10, and(hiv, unaware))).
given(exactly(rel(0.38/100, 1-10), 1-10, hiv)).
given(exactly(u, 1-10, no_hiv)).

take(1-10, 3-9, 1).
observe(all(3-9, unaware)).

probability(all(3-9, hiv)).

property(disease, [no_hiv, hiv]).
property(aware, [unaware]).

