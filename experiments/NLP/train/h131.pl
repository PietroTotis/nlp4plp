% H131: The probability that A will die within the next 20 years is 0.025, and that B will die within the next 20 years is 0.030.  What is the probability that both A and B will die within the next 20 years? ## Solution= 0.00075

group(1-17).

given(exactly(rel(.030,1-17), 1-17, die)).
group(1-4).

given(exactly(rel(.025,1-4), 1-4, die)).

take_wr(1-4, 2-11-0, 1).
take_wr(1-17, 2-11-1, 1).
union(2-11, [2-11-0,2-11-1]).


probability(all(2-11, die)).

property(outcome(0), [die]).

