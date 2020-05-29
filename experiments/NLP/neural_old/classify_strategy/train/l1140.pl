% L1140: Sixty percent of all traders hired by a large financial firm are rated as performing satisfactorily or better in their first year review.  Of these, 90 percent earned a first in financial econometrics.  Of the traders who were rated as unsatisfactory, only 20 percent earned a first in financial econometrics.  What is the probability that a trader is rated as unsatisfactory given he received a first in financial econometrics? ## Solution= 0.129032258064516

group(1-5).

given(exactly(rel(20/100, 1-5, unsatisfactory), 1-5, and(first, unsatisfactory))).
given(exactly(rel(60/100, 1-5), 1-5, satisfactorily)).
given(exactly(rel(40/100, 1-5), 1-5, unsatisfactory)).
given(exactly(rel(90/100, 1-5, satisfactorily), 1-5, and(first, satisfactorily))).

take(1-5, 4-7, 1).
observe(all(4-7, first)).

probability(all(4-7, unsatisfactory)).

property(rated, [unsatisfactory, satisfactorily]).
property(earned, [first]).

