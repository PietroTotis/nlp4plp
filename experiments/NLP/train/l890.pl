% L890: Given that there are four characters, Adenine, Guanine, Cytosine, Thymine, in 25 character strand of DNA, what is the chance that a poly-atail of twenty five adenines can occur in sequence if they occur randomly in nature? ## Solution= 8.88E-16

group(1-6).
size(1-6, 4).

given(exactly(1, 1-6, guanine)).
given(exactly(1, 1-6, thymine)).
given(exactly(1, 1-6, cytosine)).
given(exactly(1, 1-6, adenine)).

take_wr(1-6, 1-21, 25).


probability(all(1-21, adenine)).

property(outcome(0), [thymine, cytosine, guanine, adenine]).

