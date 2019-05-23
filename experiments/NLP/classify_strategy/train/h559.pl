% H559: From a group of 12 people of whom 8 are males and 4 are females, a sample of 4 is selected at random.  what is the probability that the sample contains at least 2 females? ## Solution= 67/165

group(1-6).
size(1-6, 12).

given(exactly(8, 1-6, male)).
given(exactly(4, 1-6, female)).

take(1-6, 1-20, 4).

probability(atleast(2, 1-20, female)).

property(property, [male, female]).

