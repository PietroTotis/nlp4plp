% H672: A hydraulic rework shop in a factory turned out seven rebuilt pumps today.  Suppose that three pumps are still defective.  Two of the seven are selected for thorough testing and then classified as defective or not defective.  What is the probability that they are both defective? ## Solution= 0.142857142857143

group(1-12).
size(1-12, 7).

given(exactly(3, 1-12, defective)).

take(1-12, 3-1, 2).

probability(all(3-1, defective)).

property(property, [defective]).

