% L1080: A board of trustees of a university consists of 8 men and 7 women.  A committee of 3 must be selected at random and without replacement.  The role of the committee is to select a new president for the university.  Calculate the probability that the number of men selected exceeds the number of women selected. ## Solution= 36/65

group(1-2).

given(exactly(8, 1-2, man)).
given(exactly(7, 1-2, woman)).

take(1-2, 2-2, 3).

probability(atleast(2, 2-2, man)).

property(property, [woman, man]).

