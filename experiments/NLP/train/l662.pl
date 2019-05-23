% L662: In a statistics class there are 18 juniors and 10 seniors ; 6 of the seniors are females, and 12 of the juniors are males.  If a student is selected at random, find the probability of selecting a junior or a female. ## Solution= 6/7

group(1-4).

given(exactly(12, 1-4, and(junior, male))).
given(exactly(10, 1-4, senior)).
given(exactly(18, 1-4, junior)).
given(exactly(6, 1-4, and(female, senior))).

take(1-4, 2-3, 1).

probability(all(2-3, or(junior, female))).

property(gender, [male, female]).
property(age, [senior, junior]).

