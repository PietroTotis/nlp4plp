% L206: It is known that 5 percent of the men is colour blind, and 14 percent of the women is colour blind.  Suppose that there are as many men as women.  We choose a person, which turns out to be colour blind.  What is the probability that this person is a man? ## Solution= 0.263157894736842

group(people).

given(exactly(rel(14/100, people, woman), people, and(blind, woman))).
given(exactly(rel(1/2, people), people, woman)).
given(exactly(rel(5/100, people, man), people, and(blind, man))).
given(exactly(rel(1/2, people), people, man)).

take(people, 3-4, 1).
observe(all(3-4, blind)).

probability(all(3-4, man)).

property(gender, [woman, man]).
property(disease, [blind]).

