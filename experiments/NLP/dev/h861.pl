% H861: Suppose that 40 percent of the students of a campus are women.  If 20 percent of the women and 16 percent of the men of this campus are A students, what percent of all of them are A students? ## Solution= .176

group(1-7).

given(exactly(rel(40/100, 1-7), 1-7, woman)).
given(exactly(rel(16/100, 1-7, man), 1-7, and(a, man))).
given(exactly(u, 1-7, man)).
given(exactly(rel(20/100, 1-7, woman), 1-7, and(a, woman))).

take(1-7, 2-21, 1).

probability(all(2-21, a)).

property(grade, [a]).
property(gender, [woman, man]).

