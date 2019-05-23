% H156: Fifty-two percent of the students at a certain college are females.  Five percent of the students in this college are majoring in computer science.  Two percent of the students are women majoring in computer science.  If a student is selected at random, find the conditional probability that the student is female given that the student is majoring in computer science. ## Solution= .4

group(1-5).

given(exactly(rel(2/100, 1-5), 1-5, and(computer, female))).
given(exactly(rel(5/100, 1-5), 1-5, computer)).
given(exactly(rel(52/100, 1-5), 1-5, female)).

take(1-5, 4-3, 1).
observe(all(4-3, computer)).

probability(all(4-3, female)).

property(gender, [female]).
property(major, [computer]).

