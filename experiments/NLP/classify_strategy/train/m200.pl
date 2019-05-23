% M200: Of all the smokers in a particular district, 40 percent prefer brand A and 60 percent prefer brand B. Of those smokers who prefer brand A, 30 percent are females, and of those who prefer brand B, 40 percent are female.  What is the probability that a randomly selected smoker prefers brand A, given that the person selected is a female? ## Solution= 1/3

group(1-4).

given(exactly(rel(30/100, 1-4, a), 1-4, and(a, female))).
given(exactly(rel(40/100, 1-4, b), 1-4, and(b, female))).
given(exactly(rel(40/100, 1-4), 1-4, a)).
given(exactly(rel(60/100, 1-4), 1-4, b)).

take(1-4, 2-9, 1).
observe(all(2-9, female)).

probability(all(2-9, a)).

property(brand, [a, b]).
property(sex, [female]).

