% L194: Males and females are observed to react differently to a given set of circumstances.  It has been observed that 70 percent of the females react positively to these circumstances, whereas only 40 percent of males react positively.  A group of 20 people, 15 female and 5 male, was subjected to these circumstances, and the subjects were asked to describe their reactions on a written questionnaire.  A response picked at random from the 20 was negative.  What is the probability that it was that of a male? ## Solution= 0.4

group(3-2).
size(3-2, 20).

given(exactly(rel(40/100, 3-2, male), 3-2, and(male, positively))).
given(exactly(rel(70/100, 3-2, female), 3-2, and(female, positively))).
given(exactly(15, 3-2, female)).
given(exactly(5, 3-2, male)).

take(3-2, 4-2, 1).
observe(none(4-2, positively)).

probability(all(4-2, male)).

property(gender, [male, female]).
property(reaction, [positively]).

