% M819: A panel of jurors consists of 10 persons who have had high school education and 6 persons who have had college education.  If two persons are randomly selected, what is the probability that both of them will have had college education? ## Solution= 0.125

group(1-2).

given(exactly(10, 1-2, school)).
given(exactly(6, 1-2, college)).

take(1-2, 2-3, 2).

probability(all(2-3, college)).

property(education, [school, college]).

