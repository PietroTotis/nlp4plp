% L1000: A group of traffic violators consists of 45 men and 15 women.  The men have probability 1/2 for being ticketed for crossing a red light while the women have probability 1/3 for the same offense.  Determine the conditional probability that you chose a woman given that the person you chose was being ticketed for crossing the red light. ## Solution= 2/11

group(1-2).

given(exactly(rel(1/2, 1-2, man), 1-2, and(man, ticket))).
given(exactly(45, 1-2, man)).
given(exactly(rel(1/3, 1-2, woman), 1-2, and(ticket, woman))).
given(exactly(15, 1-2, woman)).

take(1-2, 3-13, 1).
observe(all(3-13, ticket)).

probability(all(3-13, woman)).

property(gender, [woman, man]).
property(ticketed, [ticket]).

