%h829: Among 33 students in a class, 17 of them earned A 's on the midterm exam, 14 earned A 's on the final exam, and 11 did not earn A 's on either examination. What is the probability that a randomly selected student from this class earned an A on both exams? ## Solution= 9/33

group(class).
size(class,33).
property(m,[midA]).
property(f,[finalA]).
given(exactly(17,class,midA)).
given(exactly(14,class,finalA)).
given(exactly(11,class,and(not(midA),not(finalA)))).
take(class,student,1).
probability(all(student,and(midA,finalA))).
