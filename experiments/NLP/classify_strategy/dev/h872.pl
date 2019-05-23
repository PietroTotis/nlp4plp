% H872: Suppose that 5 percent of the men and 2 percent of the women working for a corporation make over $ 120,000 a year.  If 30 percent of the employees of the corporation are women, what percent of those who make over $ 120,000 a year are women? ## Solution= 0.14634146

group(2-6).

given(exactly(rel(5/100, 2-6, man), 2-6, and(120000, man))).
given(exactly(u, 2-6, man)).
given(exactly(rel(2/100, 2-6, woman), 2-6, and(120000, woman))).
given(exactly(rel(30/100, 2-6), 2-6, woman)).

take(2-6, 2-14, 1).
observe(all(2-14, 120000)).

probability(all(2-14, woman)).

property(gender, [woman, man]).
property(money, [120000]).

