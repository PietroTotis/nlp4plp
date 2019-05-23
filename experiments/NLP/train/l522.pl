% L522: A statistics class for engineers consists of 25 industrial, 10 mechanical, 10 electrical, and 8 civil engineering students.  If a person is randomly selected by the instructor to answer a question, find the probability that the student chosen is a civil engineering or an electrical engineering major. ## Solution= 18/53

group(1-3).

given(exactly(10, 1-3, mechanical)).
given(exactly(8, 1-3, civil)).
given(exactly(25, 1-3, industrial)).
given(exactly(10, 1-3, electrical)).

take(1-3, 2-3, 1).

probability(all(2-3, or(civil, electrical))).

property(property, [civil, industrial, electrical, mechanical]).

