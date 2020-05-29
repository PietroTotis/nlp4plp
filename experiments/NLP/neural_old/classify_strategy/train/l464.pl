% L464: Ten percent of computer parts produced by a certain supplier are defective.  What is the probability that a sample of 10 parts contains more than 3 defective ones? ## Solution= 0.0128

group(2-10).

given(exactly(rel(0.1,2-10), 2-10, defective)).

take_wr(2-10, 2-11, 10).


probability(more_than(3, 2-11, defective)).

property(outcome(0), [defective]).

