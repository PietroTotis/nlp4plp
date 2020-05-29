% L754: The probability that a Brittany spaniel has an arthritis-type disease is 0.024.  What is the probability that a Brittany spaniel does not have an arthritis-type disease? ## Solution= 0.976

group(2-8).

given(exactly(rel(0.024,2-8), 2-8, arthritis-type)).

take_wr(2-8, 2-14, 1).


probability(all(2-14, not(arthritis-type))).

property(outcome(0), [arthritis-type]).

