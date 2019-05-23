% H51: Twenty of the 90 nurses employed by the hospital are male.  If 10 nurses are randomly selected from those employed by the hospital, what is the probability that the sample of ten will include exactly 4 male nurses? ## Solution= 0.11104638

group(1-5).
size(1-5, 90).

given(exactly(20, 1-5, male)).

take(1-5, 2-3, 10).

probability(exactly(4, 2-3, male)).

property(outcome, [male]).

