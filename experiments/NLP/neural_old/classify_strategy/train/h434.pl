% H434: A batch of one hundred items is inspected by testing four randomly selected items.  If one of the four is defective, the batch is rejected.  What is the probability that the batch is accepted if it contains five defectives? ## Solution= 0.81187512

group(1-2).
size(1-2, 100).

given(exactly(5, 1-2, defective)).

take(1-2, 1-14, 4).

probability(none(1-14, defective)).

property(property, [defective]).

