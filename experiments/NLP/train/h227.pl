% H227: Three couples that were invited to dinner will independently show up with probabilities 0.9, 0.8, and 0.75.  Calculate the probability that 3 couples show up. ## Solution= .54

group(1-14).

given(exactly(rel(.9,1-14), 1-14, show)).
group(1-16).

given(exactly(rel(.8,1-16), 1-16, show)).
group(1-19).

given(exactly(rel(.75,1-19), 1-19, show)).

take_wr(1-14, 2-6-0, 1).
take_wr(1-16, 2-6-1, 1).
take_wr(1-19, 2-6-2, 1).
union(2-6, [2-6-0,2-6-1,2-6-2]).


probability(all(2-6, show)).

property(outcome(0), [show]).

