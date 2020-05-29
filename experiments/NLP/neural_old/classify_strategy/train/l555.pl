% L555: The probabilities that a service station will pump gas into 0, 1, 2, 3, 4, or 5 or more cars during a certain 30-minute period are 0.03, 0.18, 0.24, 0.28, 0.10, and 0.17, respectively.  Find the probability that in this 30-minute period more than 2 cars receive gas. ## Solution= 0.55

group(1-9).

given(exactly(rel(0.1,1-9), 1-9, 4)).
given(exactly(rel(0.18,1-9), 1-9, 1)).
given(exactly(rel(0.03,1-9), 1-9, 0)).
given(exactly(rel(0.17,1-9), 1-9, 5)).
given(exactly(rel(0.24,1-9), 1-9, 2)).
given(exactly(rel(0.28,1-9), 1-9, 3)).

take_wr(1-9, 1-8, 1).


probability(all(1-8, or(or(3, 4), 5))).

property(outcome(0), [1, 0, 3, 2, 5, 4]).

