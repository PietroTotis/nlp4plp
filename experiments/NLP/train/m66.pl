% M66: Jake is going to call one person from his contacts at random.  He has 30 total contacts.  16 of those contacts are people he met at school.  What is the probability that he calls a person from school? ## Solution= 0.533333333333333

group(1-10).
size(1-10, 30).

given(exactly(16, 1-10, school)).

take(1-10, 1-7, 1).

probability(all(1-7, school)).

property(property, [school]).

