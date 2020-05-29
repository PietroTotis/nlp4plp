% H776: The band at Villesdale High School has 50 members, and the student council has 20 members.  Five student council members are also in the band.  Suppose that a student is randomly selected from these two groups.  Find the probability that the student is a member of the band if you know that he or she is on the student council. ## Solution= 0.25

group(1-6).

given(exactly(20, 1-6, council)).
given(exactly(5, 1-6, and(band, council))).
given(exactly(50, 1-6, band)).

take(1-6, 3-4, 1).
observe(all(3-4, council)).

probability(all(3-4, band)).

property(band, [band]).
property(council, [council]).

