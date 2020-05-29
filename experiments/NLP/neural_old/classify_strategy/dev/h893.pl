% H893: Suppose that the Internal Revenue Service will audit 20 percent of income tax returns reporting an annual gross income of over $ 80,000.  What is the probability that of 15 such returns, at most four will be audited? ## Solution= 0.8357662760632327

group(1-14).

given(exactly(rel(20/100, 1-14), 1-14, audit)).

take(1-14, 2-7, 15).

probability(atmost(4, 2-7, audit)).

property(property, [audit]).

