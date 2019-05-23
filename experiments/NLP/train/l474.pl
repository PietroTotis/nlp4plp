% L474: 42 percent of a population is aged 25 or over.  Of such people, 75 percent have life insurance.  Calculate the probability of a person selected at random being over 25 with no life insurance. ## Solution= 0.105

group(1-5).

given(exactly(rel(75/100, 1-5, 25), 1-5, and(25, insurance))).
given(exactly(rel(42/100, 1-5), 1-5, 25)).

take(1-5, 3-6, 1).

probability(and(all(3-6, 25), none(3-6, insurance))).

property(age, [25]).
property(insurance, [insurance]).

