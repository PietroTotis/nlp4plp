% M222: A factory manager inspects a batch of 1000 components and finds 75 of them faulty.  On the basis of this data, what is the probability that a component chosen at random from the batch will be faulty? ## Solution= 0.075

group(1-9).
size(1-9, 1000).

given(exactly(75, 1-9, faulty)).

take(1-9, 2-14, 1).

probability(all(2-14, faulty)).

property(property, [faulty]).

