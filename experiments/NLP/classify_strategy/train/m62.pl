% M62: 200 students in a high school senior class are surveyed about what majors they intend to declare in college.  Of the 200 students, 80 plan to major in mathematics, 100 plan to major in computer science, and 30 plan to pursue a double major in mathematics and computer science.  Using this information, the probability that a student has chosen to major in mathematics or computer science? ## Solution= 0.75

group(1-2).
size(1-2, 200).

given(exactly(30, 1-2, and(mathematics, science))).
given(exactly(100, 1-2, science)).
given(exactly(80, 1-2, mathematics)).

take(1-2, 3-9, 1).

probability(all(3-9, or(mathematics, science))).

property(cs, [science]).
property(math, [mathematics]).

