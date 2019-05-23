% H403: Six percent of the members of a club are men and the rest are women.  Eighty percent of the men and 75 percent of the women have activity tickets for all the club activities.  A ticket is found and turned in to the club 's lost-and-found department.  What is the probability that it belongs to a woman? ## Solution= 0.93625498

group(1-5).

given(exactly(rel(6/100, 1-5), 1-5, man)).
given(exactly(rel(75/100, 1-5, woman), 1-5, and(ticket, woman))).
given(exactly(rel(94/100, 1-5), 1-5, woman)).
given(exactly(rel(80/100, 1-5, man), 1-5, and(man, ticket))).

take(1-5, 3-2, 1).
observe(all(3-2, ticket)).

probability(all(3-2, woman)).

property(gender, [woman, man]).
property(ticket, [ticket]).

