% M68: You spin a spinner with 5 equal sectors.  Two sectors are shaded and three are not.  What is the probability that it lands on a shaded sector? ## Solution= 2/5

group(1-4).

given(exactly(rel(3/5,1-4), 1-4, not_shaded)).
given(exactly(rel(2/5,1-4), 1-4, shaded)).

take_wr(1-4, 1-2, 1).


probability(all(1-2, shaded)).

property(outcome(0), [shaded, not_shaded]).

