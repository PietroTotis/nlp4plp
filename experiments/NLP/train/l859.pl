% L859: A bag contains black, white and orange counters.  If a counter is chosen at random from this bag the probability that it is black is 7/19 and the probability that it is white is 4/19.  Calculate the probability that it is orange. ## Solution= 0.421052631578947

group(2-3).

given(exactly(rel(4/19,2-3), 2-3, white)).
given(exactly(rel(7/19,2-3), 2-3, black)).

take_wr(2-3, 2-5, 1).


probability(all(2-5, and(not(black), not(white)))).

property(outcome(0), [white, black]).

