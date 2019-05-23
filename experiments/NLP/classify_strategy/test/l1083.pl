% L1083: The probability of a applicant to be admitted to a certain college is 0.8.  The probability for a student in the college to live on campus is 0.6.  What is the probability that an applicant will be admitted to the college and will be assigned a dormitory housing? ## Solution= 0.48

group(students).

given(exactly(rel(0.8, students), students, admit)).
given(exactly(rel(0.6, students, admit), students, and(admit, campus))).

take(students, 3-7, 1).

probability(and(all(3-7, admit), all(3-7, campus))).

property(campus, [campus]).
property(admitted, [admit]).

