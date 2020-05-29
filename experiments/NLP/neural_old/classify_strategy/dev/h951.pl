% H951: A day 's production of 100 fuses is inspected by a quality control inspector who tests 10 fuses at random, sampling without replacement.  If he finds 2 or fewer defective fuses, he accepts the entire lot of 100 fuses.  What is the probability the lot is accepted if it actually contains 20 defective fuses? ## Solution= 0.6812200638

group(1-7).
size(1-7, 100).

given(exactly(20, 1-7, defective)).

take(1-7, 1-18, 10).

probability(atmost(2, 1-18, defective)).

property(property, [defective]).

