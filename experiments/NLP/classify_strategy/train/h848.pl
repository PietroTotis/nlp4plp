% H848: Suppose that 30 lawn mowers, of which seven have defects, are sold to a hardware store.  If the store manager inspects six of the lawn mowers randomly, what is the probability that he finds at least one defective lawn mower ## Solution= .83

group(1-5).
size(1-5, 30).

given(exactly(7, 1-5, defective)).

take(1-5, 2-10, 6).

probability(atleast(1, 2-10, defective)).

property(property, [defective]).

