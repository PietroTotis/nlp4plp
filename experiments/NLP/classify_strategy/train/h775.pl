% H775: In a recent survey of 25 voters, 17 favor a new city regulation and 8 oppose it.  Find the probability that in a random sample of 6 respondents from this survey, exactly 2 favor the proposed regulation and 4 oppose it. ## Solution= 0.053754941

group(1-7).
size(1-7, 25).

given(exactly(8, 1-7, oppose)).
given(exactly(17, 1-7, favor)).

take(1-7, 2-11, 6).

probability(and(exactly(2, 2-11, favor), exactly(4, 2-11, oppose))).

property(property, [favor, oppose]).

