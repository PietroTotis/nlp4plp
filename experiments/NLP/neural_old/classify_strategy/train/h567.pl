% H567: For a biased coin, the probability of a head is given by p = 0.3.  If the coin is tossed 4 times, find the probability of 3 heads exactly ## Solution= .0756

group(1-4).

given(exactly(rel(.3,1-4), 1-4, head)).

take_wr(1-4, 2-5, 4).


probability(exactly(3, 2-5, head)).

property(outcome(0), [head]).

