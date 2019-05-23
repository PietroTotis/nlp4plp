% L436: Three men and three women are waiting to interview for a job.  If the candidates are called in for their interviews in a random order, what is the probability that all three women will be interviewed first? ## Solution= 1/20

group(people).

given(exactly(3, people, woman)).
given(exactly(3, people, man)).

take(people, 2-3, 3).

probability(all(2-3, woman)).

property(property, [woman, man]).

