% L180: Two additional jurors are needed to complete a jury for a criminal trial.  There are six prospective jurors, two women and four men.  Two jurors are randomly selected from the six available.  What is the probability that both of the jurors selected are women? ## Solution= 1/15

group(2-5).
size(2-5, 6).

given(exactly(2, 2-5, woman)).
given(exactly(4, 2-5, man)).

take(2-5, 3-2, 2).

probability(all(3-2, woman)).

property(property, [woman, man]).

