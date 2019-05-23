% L869: In a class of 30 students 5 study Japanese, 13 study French, 9 study German, 2 study both Japanese and French and 5 study both French and German.  What is the probability that a student studies Japanese only? ## Solution= 3/30

group(1-6).
size(1-6, 30).

given(exactly(5, 1-6, japanese)).
given(exactly(0, 1-6, and(german, japanese))).
given(exactly(2, 1-6, and(french, japanese))).
given(exactly(5, 1-6, and(french, german))).
given(exactly(9, 1-6, german)).
given(exactly(13, 1-6, french)).

take(1-6, 2-7, 1).

probability(and(all(2-7, japanese), and(none(2-7, french), none(2-7, german)))).

property(german, [german]).
property(japanese, [japanese]).
property(french, [french]).

