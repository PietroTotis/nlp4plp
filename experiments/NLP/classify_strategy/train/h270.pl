% H270: A school has 100 students.  The school offers only 3 language classes, namely Spanish, Italian and Russian.  50 students do not take a language.  The Spanish, Italian, and Russian classes have 28, 26, and 16 students respectively.  However, 12 students take both Spanish and Italian, 4 students take both Spanish and Russian, and 6 students take both Italian and Russian.  What is the probability that a randomly chosen student takes only one language class? ## Solution= .32

group(1-5).
size(1-5, 100).

given(exactly(4, 1-5, and(russian, spanish))).
given(exactly(50, 1-5, and(not_italian, and(not_russian, not_spanish)))).
given(exactly(26, 1-5, italian)).
given(exactly(16, 1-5, russian)).
given(exactly(6, 1-5, and(italian, russian))).
given(exactly(12, 1-5, and(italian, spanish))).
given(exactly(28, 1-5, spanish)).

take(1-5, 6-9, 1).

probability(all(6-9, or(and(spanish, and(not(italian), not(russian))), or(and(italian, and(not(spanish), not(russian))), and(russian, and(not(italian), not(spanish))))))).

property(russian, [russian, not_russian]).
property(italian, [not_italian, italian]).
property(spanish, [not_spanish, spanish]).

