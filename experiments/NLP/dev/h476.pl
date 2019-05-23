% H476: Suppose that data from the local county sheriff 's office showed that 2 of every 541 automobiles in the county were vandalized last year.  Applying this to 7 cars randomly selected from the county 's automobile population, what is the probability that all of the 7 cars will be vandalized? ## Solution= (2/541)^7

group(1-17).

given(exactly(rel(2/541, 1-17), 1-17, vandalize)).

take(1-17, 2-5, 7).

probability(all(2-5, vandalize)).

property(property, [vandalize]).

