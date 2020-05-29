% H580: A dental inspector find that about 20 percent of children of a certain area have tooth decay.  What is the probability that out of 6 children examined, only the first, third and fifth will have tooth decay? ## Solution= 0.004096

group(1-10).

given(exactly(rel(20/100, 1-10), 1-10, decay)).

take_wr(1-10, 2-9, 6).

probability(and(nth(1, 2-9, decay), and(nth(3, 2-9, decay), and(nth(5, 2-9, decay), exactly(3, 2-9, decay))))).

property(property, [decay]).

