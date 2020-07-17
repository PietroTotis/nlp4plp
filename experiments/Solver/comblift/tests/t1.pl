
students(8,[s1,s2,s3,s4,s5,s6,s7,s8]).
dutch(5,[s1,s2,s3,s4,s5]).
french(4, [s1,s4,s5,s7,s8]).
% test([1,2]).
% students([1,100]).
% dutch([40,100]).
% french([70,100]).

structure(seq, sequence, true, students).
size(seq, 3).
% pos(seq, 1, inter(dutch,french)).
% pos(seq, 2, french).
% pos(seq, 3, not(dutch)).
% pos(seq,2,dutch).
% pos(seq,3,not(french)).
% count(seq, inter(dutch,not(french))>1).
% count(seq, dutch=>2).
count(seq, dutch=>2).
% pos(seq,1,s5) :- pos(seq,3,s1).

query(seq).