% H656: Five applicants, two of which are male and 3 of which are female, are available for two identical jobs.  Because all applicants are equally qualified, a supervisor randomly selects two applicants to fill these jobs.  Find the probability that at least one female is selected. ## Solution= 0.9

group(1-2).
size(1-2, 5).

given(exactly(2, 1-2, male)).
given(exactly(3, 1-2, female)).

take(1-2, 2-13, 2).

probability(atleast(1, 2-13, female)).

property(property, [male, female]).

