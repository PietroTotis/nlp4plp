% L21: A class is comprised of 30 woman and 20 men.  If a class member is selected at random, what is the probability the selectee is a woman? ## Solution= 3/5

group(1-2).

given(exactly(20, 1-2, man)).
given(exactly(30, 1-2, woman)).

take(1-2, 2-4, 1).

probability(all(2-4, woman)).

property(gender, [woman, man]).

