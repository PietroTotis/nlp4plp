% M199: Four people are being considered for promotion from a pool of qualified applicants made up of 20 females and 15 males.  The four selected were all males.  What is the probability of this situation happening by chance? ## Solution= 0.0260695187165775

group(1-13).

given(exactly(15, 1-13, male)).
given(exactly(20, 1-13, female)).

take(1-13, 1-2, 4).

probability(all(1-2, male)).

property(sex, [male, female]).

