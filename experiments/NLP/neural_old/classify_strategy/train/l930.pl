% L930: A random sample of 250 students entering the university included 120 females, of whom 20 belonged to a minority group, 65 had averages over 80 percent, and 10 fit both categories.  Among the 250 students, a total of 105 people in the sample had averages over 80 percent, and a total of 40 belonged to the minority group.  Fifteen males in the minority group had averages over 80 percent.  Given a person was a male from the minority group, what is the probability he had an average over 80 percent? ## Solution= 0.75

group(1-6).
size(1-6, 250).

given(exactly(10, 1-6, and(average, and(female, minority)))).
given(exactly(120, 1-6, female)).
given(exactly(20, 1-6, and(female, minority))).
given(exactly(105, 1-6, average)).
given(exactly(65, 1-6, and(average, female))).
given(exactly(40, 1-6, minority)).
given(exactly(15, 1-6, and(average, and(male, minority)))).

take(1-6, 4-3, 1).
observe(all(4-3, male)).
observe(all(4-3, minority)).

probability(all(4-3, average)).

property(grade, [average]).
property(gender, [male, female]).
property(group, [minority]).

