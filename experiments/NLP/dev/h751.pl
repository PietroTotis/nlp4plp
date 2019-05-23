% H751: The probabilities are 0.4, 0.2, 0.3, and 0.1, respectively, that a delegate to a certain convention arrived by air, bus.  automobile, or train.  What is the probability that among 9 delegates randomly selected at this convention, 3 arrived by air, 3 arrived by bus, 1 arrived by automobile, and 2 arrived by train? ## Solution= 0.00774144

group(1-22).

given(exactly(rel(.1,1-22), 1-22, train)).
given(exactly(rel(.2,1-22), 1-22, bus)).
given(exactly(rel(.3,1-22), 1-22, automobile)).
given(exactly(rel(.4,1-22), 1-22, air)).

take_wr(1-22, 1-17, 9).


probability(and(and(exactly(3, 1-17, air), exactly(3, 1-17, bus)), and(exactly(1, 1-17, automobile), exactly(2, 1-17, train)))).

property(outcome(0), [bus, train, automobile, air]).

