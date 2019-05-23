% L989: A coal exploration company is set to look for coal mines in two states Virginia and New Mexico.  The probability that a coal mine is found in Virginia is 0.4 and the probability that a coal mine is found in New Mexico is 0.7.  What is the probability that at least one coal mine is found in one of the states? ## Solution= 0.82

group(2-24).

given(exactly(rel(0.7,2-24), 2-24, mine)).
group(2-10).

given(exactly(rel(0.4,2-10), 2-10, mine)).

take_wr(2-24, 3-12-0, 1).
take_wr(2-10, 3-12-1, 1).
union(3-12, [3-12-0,3-12-1]).


probability(atleast(1, 3-12, mine)).

property(outcome(0), [mine]).

