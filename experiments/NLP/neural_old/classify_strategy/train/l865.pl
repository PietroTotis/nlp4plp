% L865: In a class of 30 students, 12 study French, 15 study German and 5 study both French and German.  If one student is selected randomly, what is the probability that the student studies at most one language? ## Solution= 0.833333333333333

group(1-3).
size(1-3, 30).

given(exactly(15, 1-3, german)).
given(exactly(12, 1-3, french)).
given(exactly(5, 1-3, and(french, german))).

take(1-3, 2-3, 1).

probability(all(2-3, not(and(french, german)))).

property(german, [german]).
property(french, [french]).

