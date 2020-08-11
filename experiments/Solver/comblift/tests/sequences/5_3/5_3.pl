students(8,[s1,s2,s3,s4,s5,s6,s7,s8]).
dutch(5,[s1,s2,s3,s4,s5]).
french(4, [s1,s4,s5,s8]).

structure(seq, sequence, true, students).

size(seq, 5).
count(seq, french>=2).
count(seq, dutch==4).