% M594: The probability that Alex arrives home on time is 0.7.  If he does arrive home on time, the probability that his dinner is burnt is 0.1.  If he does not arrive home on time, the probability that his dinner is burnt is 0.8.  What is the probability that Alex arrives home on time and his dinner is not burnt? ## Solution= 0.63

group(events).

given(exactly(rel(0.1, events, punctual), events, and(burnt, punctual))).
given(exactly(u, events, not_punctual)).
given(exactly(rel(0.7, events), events, punctual)).
given(exactly(rel(0.8, events, not_punctual), events, and(burnt, not_punctual))).

take(events, 4-4, 1).

probability(and(all(4-4, punctual), none(4-4, burnt))).

property(punctuality, [punctual, not_punctual]).
property(dinner, [burnt]).

