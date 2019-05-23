% L544:  The probability that a married man watches a certain television show is 0.4 and the probability that a married woman watches the show is 0.5.  The probability that a man watches the show, given that his wife does, is 0.7.  Find the probability that a wife watches the show given that her husband does. ## Solution= 0.875

group(couples).

given(exactly(rel(0.4, couples), couples, man)).
given(exactly(rel(0.5, couples), couples, woman)).
given(exactly(rel(0.7, couples, woman), couples, and(woman, man))).

take(couples, couple, 1).

observe(all(couple, man)).
probability(all(couple, woman)).

property(watches_man, [man]).
property(watches_woman, [woman]).
