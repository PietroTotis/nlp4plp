% L515: Assuming women and men exist in equal number, and assuming that 5 percent of the men are colour blind and that 0,25 percent of the women are colour blind, evaluate the probability that a person drawn at random is colour blind. ## Solution= 21/800

group(people).

given(exactly(rel(0.25/100, people, woman), people, and(blind, woman))).
given(exactly(rel(1/2, people), people, woman)).
given(exactly(rel(5/100, people, man), people, and(blind, man))).
given(exactly(rel(1/2, people), people, man)).

take(people, 1-37, 1).

probability(all(1-37, blind)).

property(gender, [woman, man]).
property(disease, [blind]).

