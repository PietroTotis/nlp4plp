% M172: A student has bought seven cd 's, two of which are faulty, but he is not aware of it.  One of his friends borrows one of the new cd 's without listening to it.  The student then randomly chooses one of the remaining 6 to listen to.  What is the probability that the selected cd is faulty? ## Solution= 2/7

group(rest(2-6)).

group(1-6).
size(1-6, 7).

given(exactly(2, 1-6, faulty)).

take(rest(2-6), 3-6, 1).
take(1-6, 2-6, 1).

probability(all(3-6, faulty)).

property(property, [faulty]).

