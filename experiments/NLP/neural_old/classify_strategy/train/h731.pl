%h731: In a certain federal prison it is known that 2/3 of the inmates are under 25 years of age. It is also known that 3/5 of the inmates are male and that 5/8 of the inmates are female or 25 years of age or older. What is the probability that a prisoner selected at random from this prison is female and at least 25 years old? ## Solution= 1/3-0.225

group(inmates).
given(exactly(rel(2/3,inmates),inmates,under25)).
given(exactly(rel(3/5,inmates),inmates,male)).
given(exactly(rel(5/8,inmates),inmates,or(female,not(under25)))).
property(age,[under25]).
property(sex,[male,female]).
take(inmates,prisoner,1).
probability(all(prisoner,and(female,not(under25)))).
