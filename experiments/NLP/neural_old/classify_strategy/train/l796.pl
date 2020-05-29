% L796: Arun and Tarun appear for an interview for two vacancies.  The probability of Arun 's selection is 1/3 and that of Tarun 's selection is 1/5.  Find the probability that both of them will be selected. ## Solution= 1/15

group(1-1).

given(exactly(rel(1/3,1-1), 1-1, selection)).
group(1-3).

given(exactly(rel(1/5,1-3), 1-3, selection)).

take_wr(1-1, 3-10-0, 1).
take_wr(1-3, 3-10-1, 1).
union(3-10, [3-10-0,3-10-1]).


probability(all(3-10, selection)).

property(outcome(0), [selection]).

