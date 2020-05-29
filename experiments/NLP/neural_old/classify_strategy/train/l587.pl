% L587: An elementary school is offering 3 language classes: one in Spanish, one in French, and one in German.  The classes are open to any of the 100 students in the school.  There are 28 students in the Spanish class, 26 in the French class, and 16 in the German class.  There are 12 students that are in both Spanish and French, 4 that are in both Spanish and German, and 6 that are in both French and German.  In addition, there are 2 students taking all 3 classes.  If a student is chosen randomly, what is the probability that he or she is not in any of the language classes? ## Solution= 1/2

group(2-10).
size(2-10, 100).

given(exactly(2, 2-10, and(french, and(german, spanish)))).
given(exactly(4, 2-10, and(german, spanish))).
given(exactly(28, 2-10, spanish)).
given(exactly(16, 2-10, german)).
given(exactly(6, 2-10, and(french, german))).
given(exactly(12, 2-10, and(french, spanish))).
given(exactly(26, 2-10, french)).

take(2-10, 6-3, 1).

probability(and(none(6-3, german), and(none(6-3, french), none(6-3, spanish)))).

property(german, [german]).
property(french, [french]).
property(spanish, [spanish]).

