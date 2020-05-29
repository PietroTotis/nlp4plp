% L398: A box contains five green balls, three black balls, and seven red balls.  Two balls are selected at random without replacement from the box.  What is the probability that both balls are the same color? ## Solution= 0.3238

group(1-2).

given(exactly(5, 1-2, green)).
given(exactly(3, 1-2, black)).
given(exactly(7, 1-2, red)).

take(1-2, 2-2, 2).

probability(all_same(2-2,color)).

property(color, [green, black, red]).

