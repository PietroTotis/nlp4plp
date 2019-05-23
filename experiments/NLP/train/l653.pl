% L653: At a political rally, there are 20 Republicans, 13 Democrats, and 6 Independents.  If a person is selected at random, find the probability that he or she is either a Democrat or an Independent. ## Solution= 19/39

group(1-4).

given(exactly(6, 1-4, independent)).
given(exactly(13, 1-4, democrat)).
given(exactly(20, 1-4, republican)).

take(1-4, 2-3, 1).

probability(all(2-3, or(democrat, independent))).

property(property, [independent, republican, democrat]).

