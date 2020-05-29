% L644: In a recent year, of the 1,184,000 bachelor 's degrees conferred, 233,000 were in the field of business, 125,000 were in the social sciences, and 106,000 were in education.  If one degree is selected at random, find the probability that the degree was awarded in education. ## Solution= 106000/1184000

group(1-11).
size(1-11, 1184000).

given(exactly(125000, 1-11, science)).
given(exactly(233000, 1-11, business)).
given(exactly(106000, 1-11, education)).

take(1-11, 2-3, 1).

probability(all(2-3, education)).

property(property, [science, education, business]).

