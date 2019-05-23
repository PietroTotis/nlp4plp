% L546: In 1970, 11 percent of Americans completed four years of college, 43 percent of them were woman.  Given that a person completed four years of college in 1970, what is the probability that the person was a women? ## Solution= 0.43

group(1-7).

given(exactly(rel(43/100, 1-7, complete), 1-7, and(complete, woman))).
given(exactly(rel(11/100, 1-7), 1-7, complete)).

take(1-7, 2-4, 1).
observe(all(2-4, complete)).

probability(all(2-4, woman)).

property(gender, [woman]).
property(college, [complete]).

