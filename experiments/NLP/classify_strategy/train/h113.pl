% H113: Mrs. Avery is going to randomly select one student from her class to read a poem out loud.  There are 15 boys and 13 girls in her class.  What is the probability of selecting a boy? ## Solution= 15/28

group(1-12).

given(exactly(13, 1-12, girl)).
given(exactly(15, 1-12, boy)).

take(1-12, 1-9, 1).

probability(all(1-9, boy)).

property(property, [boy, girl]).

