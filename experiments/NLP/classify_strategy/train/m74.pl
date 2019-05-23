% M74: A student goes to the library.  The probability that she checks out a work of fiction is 0.40, a work of non-fiction is 0.30, and both fiction and non-fiction is 0.20.  What is the probability that the student checks out a work of fiction, non-fiction, or both? ## Solution= 0.50

group(probabilities).

given(exactly(rel(0.30, probabilities), probabilities, non-fiction)).
given(exactly(rel(0.20, probabilities), probabilities, and(fiction, non-fiction))).
given(exactly(rel(0.40, probabilities), probabilities, fiction)).

take(probabilities, 3-4, 1).

probability(all(3-4, or(and(fiction, non-fiction), or(fiction, non-fiction)))).

property(non-fiction, [non-fiction]).
property(fiction, [fiction]).

