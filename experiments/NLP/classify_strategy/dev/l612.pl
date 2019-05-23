% L612: Assume that there are an equal number of men and woman.  Suppose that 5 percent of men and .25 percent of women are color blind.  A color-blind person is chosen at random.  What is the probability of this person being male? ## Solution= 20/21

group(people).

given(exactly(rel(0.25/100, people, woman), people, and(blind, woman))).
given(exactly(rel(1/2, people), people, woman)).
given(exactly(rel(5/100, people, man), people, and(blind, man))).
given(exactly(rel(1/2, people), people, man)).

take(people, 3-3, 1).
observe(all(3-3, blind)).

probability(all(3-3, man)).

property(blind, [blind]).
property(gender, [woman, man]).

