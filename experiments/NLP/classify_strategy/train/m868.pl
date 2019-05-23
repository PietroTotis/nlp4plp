% M868: Sixty percent of the members of a study group are women, and 45 percent of those women are lawyers.  If one member of the study group is to be selected at random, what is the probability that the member selected is a woman lawyer? ## Solution= 0.27

group(1-5).

given(exactly(rel(60/100, 1-5), 1-5, woman)).
given(exactly(rel(45/100, 1-5, woman), 1-5, and(lawyer, woman))).

take(1-5, 2-3, 1).

probability(and(all(2-3, lawyer), all(2-3, woman))).

property(profession, [lawyer]).
property(sex, [woman]).

