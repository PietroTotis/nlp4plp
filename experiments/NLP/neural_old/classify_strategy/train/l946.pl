% L946: The probabilities of the monthly snowfall exceeding 10 cm at a particular location in the months of December, January, and February are 0.2, 0.4, and 0.6, respectively.  For a particular winter.  What is the probability that snowfall will be less than 10 cm in all three of the months of December, January and February? ## Solution= 0.192

group(1-20).

given(exactly(rel(0.4,1-20), 1-20, exceed)).
group(1-18).

given(exactly(rel(0.2,1-18), 1-18, exceed)).
group(1-23).

given(exactly(rel(0.6,1-23), 1-23, exceed)).

take_wr(1-20, 3-6-0, 1).
take_wr(1-23, 3-6-1, 1).
take_wr(1-18, 3-6-2, 1).
union(3-6, [3-6-0,3-6-1,3-6-2]).


probability(all(3-6, not(exceed))).

property(outcome(0), [exceed]).

