% L843: Suppose that 5 percent of men and 0.25 percent of women have grey hair.  A haired person is selected at random.  What is the probability of this person being male?  Assume that there are equal number of males and females. ## Solution= 20/21

group(people).

given(exactly(rel(5/100, people, male), people, and(hair, male))).
given(exactly(rel(1/2, people), people, male)).
given(exactly(rel(1/2, people), people, female)).
given(exactly(rel(0.25/100, people, female), people, and(female, hair))).

take(people, 2-3, 1).
observe(all(2-3, hair)).

probability(all(2-3, male)).

property(hair, [hair]).
property(gender, [male, female]).

