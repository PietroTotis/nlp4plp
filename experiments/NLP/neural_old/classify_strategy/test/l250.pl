% L250: In a group of 20,000 men and 10,000 women, 6 percent of men and 3 percent of women suffer from a certain disease.  What is the probability that a member of this group suffering from the disease in question is a man? ## Solution= 4/5

group(1-3).

given(exactly(20000, 1-3, man)).
given(exactly(rel(6/100, 1-3, man), 1-3, and(disease, man))).
given(exactly(10000, 1-3, woman)).
given(exactly(rel(3/100, 1-3, woman), 1-3, and(disease, woman))).

take(1-3, 2-7, 1).
observe(all(2-7, disease)).

probability(all(2-7, man)).

property(gender, [woman, man]).
property(health, [disease]).

