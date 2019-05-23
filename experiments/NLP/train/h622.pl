% H622:  Of the 120 students in a class, 30 speak Chinese, 50 speak Spanish, 75 speak French, 12 speak Spanish and Chinese, 30 speak Spanish and French, and 15 speak Chinese and French.  Seven students speak all three languages.  What is the probability that a randomly chosen student speaks none of these languages? ## Solution= 1/8

group(1-4).
size(1-4, 120).

given(exactly(30, 1-4, chinese)).
given(exactly(50, 1-4, spanish)).
given(exactly(75, 1-4, french)).

given(exactly(12, 1-4, and(chinese, spanish))).
given(exactly(30, 1-4, and(french, spanish))).
given(exactly(15, 1-4, and(chinese, french))).

given(exactly(7, 1-4, and(french, and(spanish, chinese)))).

take(1-4, 3-9, 1).

probability(all(3-9, and(not(chinese), and(not(spanish), not(french))))).

property(chinese, [chinese]).
property(french, [french]).
property(spanish, [spanish]).

