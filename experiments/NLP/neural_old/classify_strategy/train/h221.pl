% H221: Four people are chosen randomly from 5 women and 5 men.  What is the probability that two men and two women are selected? ## Solution= 10/21

group(people).

given(exactly(5, people, woman)).
given(exactly(5, people, man)).

take(people, 1-2, 4).

probability(and(exactly(2, 1-2, man), exactly(2, 1-2, woman))).

property(property, [woman, man]).

