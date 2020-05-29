% L961: Two nuts having U.S. coarse threads and three nuts having U.S. fine threads are mixed accidentally with four nuts having metric threads.  The nuts are otherwise identical.  A nut is chosen at random.  What is the probability it has U.S. coarse threads? ## Solution= 0.222222222222222

group(2-2).

given(exactly(2, 2-2, coarse)).
given(exactly(4, 2-2, metric)).
given(exactly(3, 2-2, fine)).

take(2-2, 3-2, 1).

probability(all(3-2, coarse)).

property(property, [metric, fine, coarse]).

