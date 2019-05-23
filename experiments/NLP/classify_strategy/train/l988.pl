% L988: In a clinic laboratory, the probability that a blood sample shows cancerous cells is 0.05.  Four blood samples are tested, and the samples are independent.  What is the probability that none shows cancerous cells? ## Solution= 0.8145

group(2-3).

given(exactly(rel(0.05,2-3), 2-3, cancerous)).

take_wr(2-3, 2-5, 4).


probability(all(2-5, not(cancerous))).

property(outcome(0), [cancerous]).

